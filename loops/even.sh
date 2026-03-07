#!/bin/bash

# Exit immediately if a command fails
set -e

# Ask the user to enter a number
read -p "enter number: " num

# Check if the number is divisible by 2
if (( num % 2 == 0 ))
then
    echo "even number"
else
    echo "odd number"
fi

