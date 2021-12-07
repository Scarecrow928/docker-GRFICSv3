# Dockerize [GRFICSv3](https://github.com/mrideout/GRFICSv3)

## Build images

`docker-compose build`

## Run

`docker-compose up` to run in the foreground.  
or `docker-compose up -d` to run in the backgroud.

### PLC config

Comparing to GRFICSv3, this project uses [OpenPLC_v3](https://github.com/thiagoralves/OpenPLC_v3/) instead of [OpenPLC_v2](https://github.com/thiagoralves/OpenPLC_v2).

- Go to `http://192.168.95.2:8080/login` with username `openplc` and password `openplc`.
- `Program` > `Upload program`, select file `workstation_docker/attack.st` or `workstation_docker/simplified_te.st` and upload it. Also you can compose your own PLC program in the workstation.
- After the program been compiled, click `Start PLC`.

### SCADA config

[There are figures explaining how to config.](https://github.com/mrideout/GRFICSv3/tree/master/hmi_vm)

- Go to `http://192.168.95.5:9090/ScadaBR` with username `admin` and password `admin`.
- `Import/Export` > `Import Project (Upload)`. select file `hmi_docker/ChemicalPlantScadaBR.zip` and upload it.
- `Data sources`, edit `TenEast` with IP `192.168.95.2` and save. (Save button is in the upper right corner).

### VNC to workstation

workstation's vnc port is `192.168.95.6:5900`.

### View the simulation

`http://192.168.95.10`

## Not working on Docker Desktop?

Docker Desktop (Windows/Mac) uses a VM to host docker containers, and Docker team didn't implement a virtual interface for that, so it's quite hard to implement direct IP access. Indeed, there are workarounds like [this](https://github.com/AlmirKadric-Published/docker-tuntap-osx), and this subject is discussed at [here](https://github.com/moby/moby/issues/22753) and there, but port mapping may save you some frustration.  
Uncommenting the `ports` directives in `docker-compose.yml` should do the trick (untested).
