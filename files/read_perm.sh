#!/bin/bash

set -eu

read -p "Enter file name: " file

# First check if file exists
if [ ! -e "$file" ]; then
    echo "File does not exist."
    exit 1
fi

# Then check read permission
if [ -r "$file" ]; then
    echo "File has read permission."
else
    echo "File does not have read permission."
fi