#!/bin/bash

# Check if zookeper is ready
while true; do
    if [ `echo stat | nc $DH_ZK_ADDRESS $DH_ZK_PORT | grep -q Mode` ]; then
        sleep 1
    else
        break
    fi
done

exec start-kafka.sh
