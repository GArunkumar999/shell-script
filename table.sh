#!/bin/bash
# Shebang: tells the system to run this script using Bash shell

set -e
# Exit immediately if any command returns a non-zero (error) status.
# Helps catch errors early and stops the script.

read -p "enter number:" num
# Prompt the user with "enter number:" and store the input in variable 'num'

echo "multiplication table of $num is"
# Print a message to indicate which multiplication table will be displayed

for (( j=1; j<=10; j++ ))
# Start a C-style for loop: j starts at 1, runs while j <= 10, increments j by 1 each iteration
do
    echo "$num * $j = $(($num * $j ))"
    # Calculate and print the product of num and j in the format "num * j = result"
done

