#!/bin/bash
# ----------------------------------------------------------
# Script Name : logical_operators_with_not.sh
# Description : Demonstrates AND (&&), OR (||), and NOT (!)
#               operators in shell scripting.
# ----------------------------------------------------------

a=20
b=30

echo "Logical Operators Example"
echo

# AND (&&) → Both conditions must be TRUE
if [[ $a -lt $b && $a -gt $b ]]; then
   echo "Both statements are true"
else
   echo "AND condition is false"
fi

# OR (||) → At least one condition must be TRUE
if [[ $a -eq $b || $a -ne $b ]]; then
   echo "At least one statement is true"
fi

# NOT (!) → Reverses the result of a condition
# a == b → FALSE
# ! (a == b) → TRUE
if ! [[ $a -eq $b ]]; then
   echo "a is NOT equal to b"
fi