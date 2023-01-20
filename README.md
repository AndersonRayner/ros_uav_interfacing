# ros_uav_interfacing

An example repo for using ROS to interface with a UAV, including launch and configuration files.

[Back to Index](https://github.com/AndersonRayner/uas_tools_index)

## Nodes and Scripts
- `setRates` contains an example of how to set the mavros message rate at runtime.  This helps ensure that you receive data from your flight controller at the required rate. 
- `jetson_clocks.sh` sets the clocks of a nvidia TX2 to the maximum performance
- `start_mavlinkrouter.sh` restarts mavlink router, good for helping fix connection issues
- `USB_latency_fix_x86.sh` sets the USB ports to low-latency, meaning the operating system won't buffer data before giving it to ROS.  The exact commands required chances between distros, but hopefully, this one will work for you

## Dependencies
Requries `mavros` and `mavros_extras` to facilitate the interfacing.
```bash
sudo apt install ros-noetic-mavros ros-noetic-mavros-extras
```

## Common Issues
- Make sure the interface listed in the launch file matches what hardware you have.
- Make sure your vehicle's system ID matches that in the launch file. 
