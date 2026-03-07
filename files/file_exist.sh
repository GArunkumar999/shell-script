#!/bin/bash

# Prompt the user to enter a file name
# -p option allows displaying the message inline
read -p "Enter file name: " file

# Check if the given file exists and is a regular file
# -f option returns true if file exists and is a regular file
if [ -f "$file" ]
then 
    # If file exists
    echo "$file exists"
else 
    # If file does not exist
    echo "$file doesn't exist"
fi