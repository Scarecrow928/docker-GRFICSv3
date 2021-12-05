FROM php:apache-bullseye

WORKDIR /src

COPY web_visualization /var/www/html
COPY simulation /src
COPY docker-entrypoint.sh /
COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y libjsoncpp-dev liblapacke-dev \
    python3 python3-pip build-essential && pip install pymodbus && make

ENTRYPOINT [ "/docker-entrypoint.sh" ]