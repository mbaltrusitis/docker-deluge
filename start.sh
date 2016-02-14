#!/bin/bash

start_up() {
    echo "Starting up Deluge v$DELUGE_VERSION"
    deluged -p 58846 -L info --config=/configdata/deluged \
        && deluge-web -p 8112 -L info --config=/configdata/deluge-web
    
}

start_up
