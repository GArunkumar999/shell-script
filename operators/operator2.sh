#!/bin/bash
# ----------------------------------------------------------
# Script Name : comparison_operators.sh
# Description : Demonstrates numeric comparison operators
#               in a shell script using if conditions.
# ----------------------------------------------------------

# Assign values to variables
a=50
b=20

echo "Comparison Operators Example"
echo

# -eq → Equal to
if [ "$a" -eq "$b" ]; then
   echo "a is equal to b"
fi

# -ne → Not equal to
if [ "$a" -ne "$b" ]; then
   echo "a is not equal to b"
fi

# -gt → Greater than
if [ "$a" -gt "$b" ]; then
   echo "a is greater than b"
fi

# -lt → Less than
if [ "$a" -lt "$b" ]; then
   echo "a is less than b"
fi

# -ge → Greater than or equal to
if [ "$a" -ge "$b" ]; then
   echo "a is greater than or equal to b"
fi

# -le → Less than or equal to
if [ "$a" -le "$b" ]; then
   echo "a is less than or equal to b"
fi

