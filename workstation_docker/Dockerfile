FROM debian:11

COPY OpenPLC_Editor /src
COPY .xinitrc /root/
#COPY sources.list /etc/apt/sources.list

WORKDIR /src

RUN apt-get update && apt-get install -y sudo build-essential autoconf x11vnc xvfb

#ARG http_proxy=http://172.17.0.1:1080
#ARG https_proxy=http://172.17.0.1:1080

RUN ./install.sh

EXPOSE 5900

CMD [ "x11vnc", "-create", "-forever" ]