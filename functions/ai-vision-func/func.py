import io
import json
import logging
import oci
import base64
import cx_Oracle
import json
import os
from fdk import response

from oci.ai_vision import AIServiceVisionClient
from oci.ai_vision.models import AnalyzeImageDetails, ImageClassificationFeature, ImageObjectDetectionFeature, InlineImageDetails


signer = oci.auth.signers.get_resource_principals_signer()
ai_service_vision_client = AIServiceVisionClient({}, signer=signer)
secret_client = oci.secrets.SecretsClient({}, signer=signer)


def handler(ctx, data: io.BytesIO = None):
    '''
    Function that receives an image to process in the vision service.
    Optional can receive the model_id
    '''
    try:
        body = json.loads(data.getvalue())
        image_base64 = body.get("image")
        model_id = body.get("model_id")
        model_type = body.get("model_type")

        r = analize_image(image_base64, model_type, model_id)

        r["details"] = {"id": '', "name": ''}

        if r["labels"] is not None and len(r["labels"]) > 0:
            label_id = r["labels"][0]["name"]
            r["details"] = get_item_details(label_id)

        if r["image_objects"] is not None and len(r["image_objects"]) > 0:
            label_id = r["image_objects"][0]["name"]
            r["details"] = get_item_details(label_id)

        return response.Response(ctx, response_data=json.dumps(r), headers={"Content-Type": "application/json"})

    except (Exception, ValueError) as ex:
        logging.getLogger().info('Error with vision service call: ' + str(ex))

    return response.Response(
        ctx, response_data=json.dumps({'An error ocurred': 502}),
        headers={"Content-Type": "application/json"}
    )


def analize_image(image_encoded, model_type, model_id=None):
	image_details = InlineImageDetails()
	image_details.data = image_encoded
	features = []

	if model_type is None or model_type == 'image-classification':
		feature = ImageClassificationFeature()
        
		if model_id is not None:
			feature.model_id = model_id

		features = [feature]
        
	if model_type == 'object-detection':
		feature = ImageObjectDetectionFeature()
        
		if model_id is not None:
			feature.model_id = model_id

		features = [feature]
        
	analyze_image_details = AnalyzeImageDetails()
	analyze_image_details.image = image_details
	analyze_image_details.features = features

	res = ai_service_vision_client.analyze_image(analyze_image_details=analyze_image_details)
    
	return oci.util.to_dict(res.data)


# Database functions

def get_text_secret(secret_ocid):
    '''
    Function to get the secrets from the vault
    '''
    try:
        secret_content = secret_client.get_secret_bundle(secret_ocid).data.secret_bundle_content.content.encode('utf-8')
        decrypted_secret_content = base64.b64decode(secret_content).decode("utf-8")
        return decrypted_secret_content
    except Exception as ex:
        logging.exception("ERROR: failed to retrieve the secret content")
        raise

def get_item_details(item_id):
    '''
    Get an item from the databse using an item_id
    '''
    con = None
    try:
        con = cx_Oracle.connect(username, password, db_url)
        with con.cursor() as cursor:
            for row in cursor.execute("SELECT c.doc FROM ITEM_DETAILS c where c.doc.id = '%s'" % item_id):
                value = json.loads(row[0].read())
                return value
    except Exception:
        logging.exception("ATP Error")
    finally:
        if con is not None:
            con.close()

    return {"id" : item_id, "name" : item_id}

username = os.environ["ATP_USERNAME"]
password = get_text_secret(os.environ["PASSWORD_SECRET_OCID"])
db_url = os.environ["DB_DNS"]
os.environ["TNS_ADMIN"] = '/function/wallet'
