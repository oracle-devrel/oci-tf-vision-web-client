CREATE TABLE ITEM_DETAILS (
  id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY (CACHE 5) PRIMARY KEY,
  doc CLOB CONSTRAINT valid_json CHECK (doc IS JSON));


-- LANDMARKS

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{
  "id" : "Eiffel_Tower",
  "name" : "Eiffel Tower",
  "description": "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. "
}'
);
INSERT INTO ITEM_DETAILS (doc) VALUES (
'{
  "id" : "Stonehenge",
  "name" : "Stonehenge",
  "description": "Stonehenge is a prehistoric monument on Salisbury Plain in Wiltshire, England, two miles (3 km) west of Amesbury. It consists of an outer ring of vertical sarsen standing stones, each around 13 feet (4.0 m) high, seven feet (2.1 m) wide, and weighing around 25 tons, topped by connecting horizontal lintel stones."
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{
  "id" : "Trevi_fountain",
  "name" : "Trevi fountain",
  "description": "The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres (86 ft) high and 49.15 metres (161.3 ft) wide."
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{
  "id" : "Great_Pyramid_of_Giza",
  "name" : "Great Pyramid of Giza",
  "description": "The Great Pyramid of Giza is the largest Egyptian pyramid and the tomb of Fourth Dynasty pharaoh Khufu. Built in the early 26th century BC during a period of around 27 years, the pyramid is the oldest of the Seven Wonders of the Ancient World"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Lotus_Temple",  
  "name" : "Lotus Temple",  
  "description": "The Lotus Temple, located in Delhi, India, is a Bahai House of Worship that was dedicated in December 1986. Notable for its flowerlike shape, it has become a prominent attraction in the city"
}'
);

-- DATE-FRUIT



INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Ajwa",  
  "name" : "Ajwa",
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>27 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>3 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>30 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>1 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>0.25 cup</span> </td> </tr> </tbody> </table>"
}'
);


INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Galaxy",  
  "name" : "Galaxy",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>59 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>9 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>6 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>14 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Medjool",  
  "name" : "Medjool",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>64 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>7 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>71 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0.2 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Meneifi",  
  "name" : "Meneifi",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>64 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>7 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>71 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0.2 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Nabtat Ali",  
  "name" : "Nabtat Ali",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>67 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>8 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Rutab",  
  "name" : "Rutab",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>67 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>8 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Shaishe",  
  "name" : "Shaishe",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>8 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>83 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Sokari",  
  "name" : "Sokari",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>8 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>83 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);


INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "Sugaey",  
  "name" : "Sugaey",  
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>75 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>8 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>83 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>2 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

INSERT INTO ITEM_DETAILS (doc) VALUES (
'{  
  "id" : "alsagae",  
  "name" : "Alsagae",
  "htmlContent": "<table> <tbody> <tr> <th colspan=2 >Nutrition Facts</th> </tr> <tr> <td></td></tr> <tr> <td> <strong>Net Carbs</strong></td> <td><span>72 g</span> </td> </tr> <tr> <td> <strong>Fiber</strong></td> <td><span>6 g</span> </td> </tr> <tr> <td> <strong>Total Carbs</strong></td> <td><span>81 g</span> </td> </tr> <tr> <td> <strong>Protein</strong></td> <td><span>1 g</span> </td> </tr> <tr> <td> <strong>Fats</strong></td> <td><span>0 g</span> </td> </tr> <tr> <td></td></tr> <tr> <td> <strong>Quantity</strong></td> <td><span>1 serving</span> </td> </tr> </tbody> </table>"
}'
);

commit;