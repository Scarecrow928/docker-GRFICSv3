FROM ubuntu:20.04

COPY . /src
#COPY sources.list /etc/apt/sources.list

WORKDIR /src

RUN apt-get update && apt-get install -y wget git time sudo
RUN cd /src && ./install_scadabr.sh && cd / && \
    rm -r /src

CMD /opt/tomcat6/apache-tomcat-6.0.53/bin/startup.sh && sleep infinity
