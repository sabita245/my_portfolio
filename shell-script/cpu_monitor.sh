#!/bin/bash

HOST=$(hostname)
DATE=$(date)

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100-$8}')
MEMORY=$(free | awk '/Mem/ {printf("%.2f"), $3/$2*100}')
DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "============================"
echo "Server : $HOST"
echo "Time   : $DATE"
echo "============================"

echo "CPU Usage    : $CPU%"
echo "Memory Usage : $MEMORY%"
echo "Disk Usage   : $DISK%"

echo

if (( $(echo "$CPU > 80" | bc -l) ))
then
    echo "ALERT : CPU Usage High"
fi

if (( $(echo "$MEMORY > 80" | bc -l) ))
then
    echo "ALERT : Memory Usage High"
fi

if [ "$DISK" -gt 80 ]
then
    echo "ALERT : Disk Usage High"
fi