#!/bin/bash  
echo
echo "Setting low latency mode for serial interfaces"
echo

for file in $(ls /sys/bus/usb-serial/devices/); do
	value=`cat /sys/bus/usb-serial/devices/$file/latency_timer`
      if [ $value -gt 1 ]; then
        echo "Setting low_latency mode for $file"
        sudo sh -c "echo 1 > /sys/bus/usb-serial/devices/$file/latency_timer"
      else
        echo "low_latency already set for $file" 
      fi
    done

exit 0
