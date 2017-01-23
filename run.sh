#!/bin/bash

timestamp=$(date +%Y%m%d_%H%M%S)

iw dev ${INTERFACE:-mon0} set channel ${CHANNEL:-1}
tcpdump -i ${INTERFACE:-mon0} -w /data/monitor_$timestamp.cap &
ping -i 0.2 ${PING_HOST:-8.8.8.8} >$/data/pings_$timestamp.txt &

while true; do
    sync
    sleep 1m
done

