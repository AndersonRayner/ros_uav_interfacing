#!/bin/bash  
echo
echo "Starting mavlink-router service"
echo

#mavlink-routerd -c ./../config_files/mavlink-router.conf

sudo systemctl restart mavlink-router.service
