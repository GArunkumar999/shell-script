#!/bin/bash
# ----------------------------------------------------------
# Script Name : login_simulation.sh
# Description : Demonstrates reading username and password
#               from user input securely.
# ----------------------------------------------------------

# Prompt the user to enter username
read -p "Enter user name: " username
echo  # Print empty line for formatting

# Prompt the user to enter password securely
# -s → silent mode (input will not be displayed on screen)
read -s -p "Enter password: " password
echo  # Move to next line after password input

# Display the entered username
echo "Your name is $username"

# Never print passwords in real applications
# echo "Your password is $password"  # ⚠️ Security risk

# Simulated login success message
echo "Logged in successfully"