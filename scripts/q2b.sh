#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q2b.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem delay 200ms
sudo tc qdisc list dev $1
