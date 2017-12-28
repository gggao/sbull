#!/bin/sh

case $1 in
    "load")
    sudo ./sbull_load.sh
    ;;
    "unload")
    sudo ./sbull_unload.sh
    ;;
    *)
    echo "unknow param"
esac
