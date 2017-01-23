#!/bin/bash

tcpdump -i ${INTERFACE:-mon0} -w monitor.cap &
ping -i 0.2 ${PING_HOST:-8.8.8.8} >pings.txt

