#!/bin/bash   # Shebang: tells the system to run this script using the bash shell

# Declaring an array named 'subjects' with 3 elements
subjects=("telugu" "english" "maths")

# Appending (adding) a new element to the existing array
subjects+=("social")

# ${subjects[@]} expands all elements of the array
# echo prints them in a single line separated by spaces
echo ${subjects[@]}

# Loop to iterate through each element in the array
for i in "${subjects[@]}"
do 
    # Prints each element one by one (line by line)
    echo "$i"
done
