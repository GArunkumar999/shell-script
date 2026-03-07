#!/bin/bash
# This script collects user details (name, age, date of birth)
# and displays them in a formatted way.

# Prompt the user to enter their name and store it in the variable 'name'
read -p "Enter your name: " name

# Prompt the user to enter their age and store it in the variable 'age'
read -p "Enter your age: " age

# Prompt the user to enter their date of birth and store it in the variable 'dob'
read -p "Enter your DOB: " dob

# Print an empty line for better output formatting
echo

# Display the collected user information
echo "Hello, $name"
echo "You are $age years old"
echo "Your DOB is $dob"