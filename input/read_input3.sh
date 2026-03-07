#!/bin/bash
# ----------------------------------------------------------
# Script Name : timed_input.sh
# Description : Takes user input with a timeout of 10 seconds
#               and displays the entered details.
# ----------------------------------------------------------

# Prompt the user to enter their name
# -t 10 → waits for 10 seconds for user input
# If no input is provided within 10 seconds, it moves to next command
read -t 10 -p "Enter name: " name
echo  # Print empty line for better formatting

# Prompt the user to enter their school name
# Again, timeout is set to 10 seconds
read -t 10 -p "Enter school name: " school
echo  # Print empty line for better formatting

# Display the collected inputs
echo "Your name is $name"
echo "Your school name is $school"