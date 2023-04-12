#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q3.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem rate 50kbps
sudo tc qdisc list dev $1
sleep 60
sudo tc qdisc del root dev $1
sudo tc qdisc list dev $1
