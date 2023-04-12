#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q4b.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem loss random 1%
sudo tc qdisc list dev $1
