#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: cleanup.sh <interface>"
        exit -1
fi

sudo tc qdisc del root dev $1
sudo tc qdisc list dev $1
