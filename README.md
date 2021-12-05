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

## Not working on Docker Desktop?

Docker Desktop (Windows/Mac) uses a VM to host docker containers, and Docker team didn't implement a virtual interface for that, so it's quite hard to implement direct IP access. Indeed, there are workarounds like [this](https://github.com/AlmirKadric-Published/docker-tuntap-osx), and this subject is discussed at [here](https://github.com/moby/moby/issues/22753) and there, but port mapping may save you some frustration.  
Uncommenting the `ports` directives in `docker-compose.yml` should do the trick (untested).
