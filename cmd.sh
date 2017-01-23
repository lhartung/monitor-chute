#!/bin/bash

iw dev ${INTERFACE:-mon0} set channel ${CHANNEL:-1}
tcpdump -i ${INTERFACE:-mon0} -w monitor.cap &
ping -i 0.2 ${PING_HOST:-8.8.8.8} >pings.txt

