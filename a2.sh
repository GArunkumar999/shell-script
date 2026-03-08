#!/bin/bash            # Shebang: tells the system to execute this script using bash shell

set -e                 # If any command fails (returns non-zero exit code), script will stop immediately

# Declaring an array with 5 elements
fruits=("apple" "banana" "orange" "grapes" "mango")

# Loop through array using ${fruits[@]}
# ${fruits[@]} treats each element as a separate item
for i in "${fruits[@]}"
do 
     echo "$i"        # prints each fruit on a new line
done

# Loop through array using ${fruits[*]}
# "${fruits[*]}" treats all elements as ONE single string
for i in "${fruits[*]}"
do 
     echo "$i"        # prints entire array in one line
done

# ${#fruits[@]} returns number of elements in the array
echo "array length is ${#fruits[@]}"

# ${#fruits[*]} also returns number of elements in the array
# For length calculation both behave the same
echo "array length is ${#fruits[*]}"
