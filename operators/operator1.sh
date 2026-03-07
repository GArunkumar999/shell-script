#!/bin/bash
# ----------------------------------------------------------
# Script Name : arithmetic_operations.sh
# Description : Demonstrates basic arithmetic operations
#               in a shell script using arithmetic expansion.
# ----------------------------------------------------------

# Assign values to variables
a=20
b=10

# Perform arithmetic operations using $(( ))
# $(( )) → Used for integer arithmetic in Bash

echo "a + b = $((a + b))"   # Addition
echo "a - b = $((a - b))"   # Subtraction
echo "a * b = $((a * b))"   # Multiplication
echo "a / b = $((a / b))"   # Division (integer division)
echo "a % b = $((a % b))"   # Modulus (remainder)


