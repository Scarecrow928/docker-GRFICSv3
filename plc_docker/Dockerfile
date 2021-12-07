FROM debian:11

WORKDIR /src

COPY OpenPLC_v3 /src/
#COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y git sudo

#ARG http_proxy=http://172.17.0.1:1080
#ARG https_proxy=http://172.17.0.1:1080

RUN ./install.sh docker

COPY mbconfig.cfg /src/webserver/
COPY openplc.db /src/webserver/

ENTRYPOINT [ "/src/start_openplc.sh" ]