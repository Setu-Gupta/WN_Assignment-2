#!/bin/bash

if [ "$#" -ne 2 ]; then
        echo "Usage: client.sh <server IP> <port>"
        exit -1
fi
echo "Starting the client. Talking to $1:$2"
iperf3 -c $1 -p $2 -t 120
