#!/bin/bash

status=$(systemctl is-active nginx)

if [ $status != "active" ]
then
    echo "nginx is down, restarting"
    sudo systemctl restart nginx
else 
    echo "nginx running"
fi



