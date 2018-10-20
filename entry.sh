#!/bin/bash

set -xe

VNC_STORE_PWD_FILE=~/.vnc/passwd
if [ ! -e "${VNC_STORE_PWD_FILE}" -o -n "${VNC_PASSWORD}" ]; then
    mkdir -vp ~/.vnc

    # the default VNC password is 'hola'
    x11vnc -storepasswd ${VNC_PASSWORD:-hola} ${VNC_STORE_PWD_FILE}
fi

# retain running as pid 1
exec supervisord
