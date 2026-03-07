#!/bin/bash

# Exit the script immediately if any command fails
set -e

# Prompt the user to enter a number and store it in variable 'num'
read -p "enter number: " num

# Check if the number is not divisible by 2
# If remainder of num % 2 is not 0, the number is odd
if (( num % 2 != 0 ))
then
    # Print message if the number is odd
    echo "odd number"
else
    # Otherwise the number is even
    echo "even number"
fi
