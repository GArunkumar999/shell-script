#!/bin/bash
# ----------------------------------------------------------
# Script Name : special_variables.sh
# Description : Demonstrates commonly used special variables
#               in shell scripting.
# ----------------------------------------------------------

# $# → Number of command-line arguments passed to the script
echo "Number of arguments passed: $#"

# $@ → All arguments passed to the script (treated as separate words)
echo "All arguments using \$@: $@"

# $* → All arguments passed to the script (treated as a single word)
echo "All arguments using \$*: $*"

# $? → Exit status of the last executed command
echo "Exit status of last command: $?"

# $$ → Process ID (PID) of the current script
echo "Current script PID: $$"

# $SHELL → Path of the current user's default shell
echo "Current shell: $SHELL"