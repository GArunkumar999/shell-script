#!/bin/bash

# Exit the script immediately if any command fails
set -e 

# Prompt the user to enter the starting number
read -p "enter starting number: " num1

# Prompt the user to enter the ending number
read -p "enter ending number: " num2

# Display a message showing the range
echo "odd numbers between $num1 to $num2"

# Loop from the starting number to the ending number
for (( i=$num1; i<=$num2; i++ ))
do
    # Check if the current number is not divisible by 2 (odd number)
    if (( i % 2 != 0 ))
    then
       # Print the odd number
       echo "$i"
    fi
done
