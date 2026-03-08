#!/bin/bash   # Shebang: tells the system to run this script using bash shell

# Declaring an array with service names
services=("nginx" "sshd")

# Loop through each service in the array
for s in "${services[@]}"
do
   # Check the status of the service using systemctl
   # command substitution stores output into variable 'status'
   status=$(systemctl is-active $s)

   # If service status is NOT active
   if [ $status != "active" ]; then
      # Start the service using systemctl
      sudo systemctl start $s 

      # Print message that service was started
      echo "service $s started"

   else
      # If service is already active, print running message
      echo "$s running"
   fi
done
