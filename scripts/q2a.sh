#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q2a.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem delay 100ms
sudo tc qdisc list dev $1
