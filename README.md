# Dockerize [GRFICSv3](https://github.com/mrideout/GRFICSv3)

## Build images

`docker-compose build`

## Run

`docker-compose up` to run in the foreground. 

or `docker-compose up -d` to run in the backgroud.

## VNC to workstation

workstation's vnc port is `192.168.95.6:5900`.

## View the simulation

`http://192.168.95.10`

## Limitation

As `docker-compose` can't specify static IPs for replicated containers, there is only one simulation container.
