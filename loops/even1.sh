#!/bin/bash

# Exit the script immediately if any command fails
set -e

# Ask the user to enter the starting number
read -p "enter starting number: " num1

# Ask the user to enter the ending number
read -p "enter ending number: " num2

# Print a message showing the range
echo "even numbers between $num1 to $num2"

# Loop from the starting number to the ending number
for (( i=$num1; i<=$num2; i++ ))
do
    
    # Check if the current number is divisible by 2 (even)
    if (( i % 2 == 0 ))
    then
        # Print the even number
        echo "$i"
    fi
done
