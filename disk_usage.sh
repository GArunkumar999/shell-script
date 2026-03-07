#!/bin/bash

# Get the disk usage percentage of the root (/) filesystem
# df -h /      -> Shows disk usage in human-readable format for root partition
# awk 'NR==2'  -> Selects the second line (actual disk data)
# print int($5)-> Extracts the 5th column (usage %) and removes the % symbol
disk_usage=$(df -h / | awk 'NR==2 {print int($5)}')

# Define maximum allowed disk usage threshold (in percentage)
max_limit=80

# Compare current disk usage with the defined threshold
if [ "$disk_usage" -ge "$max_limit" ]
then
    # Condition when disk usage is greater than or equal to 80%
    echo "Disk usage is high, take immediate action"
else 
    # Condition when disk usage is below 80%
    echo "Disk usage is normal"
fi