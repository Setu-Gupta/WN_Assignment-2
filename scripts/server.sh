#!/bin/bash

if [ "$#" -ne 2 ]; then
        echo "Usage: client.sh <Server IP> <Server Port>"
        exit -1
fi
echo "Starting the server at port $1"
iperf3 -s -p $1
