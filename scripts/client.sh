#!/bin/bash

if [ "$#" -ne 3 ]; then
        echo "Usage: client.sh <server IP> <port> <trace file path>"
        exit -1
fi
echo "Starting the client. Talking to $1:$2"
iperf3 -c $1 -p $2 -t 120 | grep "/sec" | grep -v "sender" | grep -v "receiver" > $3
