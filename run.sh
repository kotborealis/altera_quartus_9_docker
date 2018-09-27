#!/usr/bin/env bash

xhost + && \
docker run \
    -ti --rm -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $1:/media \
    altera-quartus-9:latest