#!/bin/bash
# Check disk space
threshold=90
disk_space=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $disk_space -ge $threshold ]; then
    echo "Warning: Disk space is at $disk_space%, exceeding threshold of $threshold%"
else
    echo "Disk space is normal: $disk_space%"
fi

