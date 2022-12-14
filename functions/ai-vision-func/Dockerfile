FROM oraclelinux:7-slim
WORKDIR /function
RUN groupadd --gid 1000 fn && adduser --uid 1000 --gid fn fn

ARG release=19
ARG update=10

RUN  yum-config-manager --disable ol7_developer_EPEL && \
     yum-config-manager --enable ol7_optional_latest && \
     yum-config-manager --enable ol7_oracle_instantclient && \
     yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install python3 python3-devel oracle-release-el7 
RUN  yum -y install oracle-instantclient${release}.${update}-basiclite && \
     yum -y install unzip gcc && \
     rm -rf /var/cache/yum

ADD . /function/

RUN unzip wallet.zip -d /function/wallet

# Set wallet location
RUN sed -i 's/\?\/network\/admin/\/function\/wallet/g' /function/wallet/sqlnet.ora

RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip3 install --no-cache --no-cache-dir -r requirements.txt
RUN rm -fr /function/.pip_cache ~/.cache/pip requirements.txt func.yaml Dockerfile README.md

ENV PYTHONPATH=/python
ENTRYPOINT ["/usr/local/bin/fdk", "/function/func.py", "handler"]