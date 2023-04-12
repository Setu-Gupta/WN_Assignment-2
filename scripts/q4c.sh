#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Usage: q4c.sh <interface>"
        exit -1
fi

sudo tc qdisc add dev $1 root netem loss random 5%
sudo tc qdisc list dev $1
