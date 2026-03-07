#!/bin/bash
# ----------------------------------------------------------
# Script Name : debug_system_info.sh
# Description : Demonstrates running a script in debug mode
#               and executes basic Linux system commands.
# ----------------------------------------------------------

# Enable debug (execution trace) mode
# set -x prints each command before executing it
# Useful for troubleshooting and understanding script flow
set -x  

# NOTE:
# Instead of writing 'set -x' inside the script,
# you can also run the script in debug mode using:
# sh -x debug_system_info.sh
# or
# bash -x debug_system_info.sh

# List files and directories in the current directory
ls

# Display present working directory
pwd

# Show environment variables
env

# Create directory named 'test'
# (Will throw error if already exists)
mkdir test

# Create an empty file named 'file1'
touch file1

# Display system information
uname

# Show currently logged-in user
logname

# Display disk usage in human-readable format
df -h

# Display memory usage
free -h

# Show running processes (interactive)
top

# Show enhanced process viewer (if installed)
htop

# Show current shell processes
ps

# Show all processes with full details
ps -ef

# Disable debug mode (optional, if more code follows)
# set +x