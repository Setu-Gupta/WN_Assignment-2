#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q4a.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem loss random 0.01%
sudo tc qdisc list dev $1
