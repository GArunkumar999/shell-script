#!/bin/bash

set -eu

read -p "Enter file name: " file

# Then check read permission
if [ -w "$file" ]; then
    echo "File has write permission."
else
    echo "File does not have write permission."
fi