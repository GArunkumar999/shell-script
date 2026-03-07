#!/bin/bash 

# Exit immediately if any command returns a non-zero (error) status
set -e

# Loop from 1 to 10
for i in {1..10}
do
  # Print the current value of the loop variable
  echo "$i"
done
