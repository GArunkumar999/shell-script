#!/bin/bash

# Exit immediately if any command fails
# Useful in production/DevOps scripts to avoid unexpected behavior
set -e

# Ask user to enter directory name
read -p "Enter directory name: " dir

# Check if the given path exists and is a directory
# -d returns true if the directory exists
if [ -d "$dir" ]
then
    echo "$dir exists"
else
    echo "$dir doesn't exist"
fi