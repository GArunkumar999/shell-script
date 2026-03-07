#!/bin/bash

set -eu

read -p "Enter file name: " file

# Then check read permission
if [ -x "$file" ]; then
    echo "File has execute permission."
else
    echo "File does not have execute permission."
fi