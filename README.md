
# Dockerize of [GRFICSv3](https://github.com/mrideout/GRFICSv3)

## Build images
1. `docker build -t hmi:0.1 hmi_docker`
2. `docker build -t plc:0.1 plc_docker`
3. `docker build -t simulation:0.1 simulation_docker`
4. `docker build -t workstation:0.1 workstation_docker`

## Run
`docker-compose up` to run in the foreground. 

or `docker-compose up -d` to run in the backgroud.

## VNC to workstation
workstation's vnc port is `192.168.95.6:5900`.

## View the simulation
`http://192.168.95.10`

## Limitation
As `docker-compose` can't specify static IPs of replicated containers, there is only one simulation container.