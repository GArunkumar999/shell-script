#!/bin/bash
# This script collects basic user information (name, age, village)
# and displays it back to the user.

# Prompt the user to enter their name
echo "Enter your name: "
read name   # Store the entered value in variable 'name'

# Prompt the user to enter their age
echo "Enter your age: "
read age    # Store the entered value in variable 'age'

# Prompt the user to enter their village name
echo "Enter your village: "
read village   # Store the entered value in variable 'village'

echo          # Print an empty line for better output formatting

# Display the collected information
echo "Your name is $name"
echo "Your age is $age"
echo "Your village name is $village"