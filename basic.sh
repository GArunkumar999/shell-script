#!/bin/bash
# ----------------------------------------------------------
# Script Name : system_info.sh
# Description : Executes basic Linux commands to display
#               system information and perform simple tasks.
# ----------------------------------------------------------

# List files and directories in the current location
ls

# Display the current working directory
pwd

# Show all environment variables
env

# Create a directory named 'test'
mkdir test

# Create an empty file named 'file1'
touch file1

# Display system information (kernel name, OS details)
uname

# Show the name of the currently logged-in user
logname

# Display disk usage in human-readable format
df -h

# Show memory usage
free

# Display real-time system processes (interactive command)
top

# Display enhanced interactive process viewer (if installed)
htop

# Show current shell processes
ps

# Show all running processes with detailed information
ps -ef