#!/bin/sh

apache2ctl start

workdir=/src
pkill python3
python3 ${workdir}/remote_io/modbus/feed1.py &
python3 ${workdir}/remote_io/modbus/feed2.py &
python3 ${workdir}/remote_io/modbus/purge.py &
python3 ${workdir}/remote_io/modbus/product.py &
python3 ${workdir}/tremote_io/modbus/tank.py &
python3 ${workdir}/remote_io/modbus/analyzer.py &
${workdir}/simulation