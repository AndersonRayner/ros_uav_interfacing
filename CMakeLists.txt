cmake_minimum_required(VERSION 3.0.2)
project(aircraft_interface)

# Dependendices
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs 
)

# Declare a Catkin Package
catkin_package(
  CATKIN_DEPENDS roscpp

)

# Includes
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${roscpp_INCLUDE_DIRS}
  ${std_msgs_INCLUDE_DIRS}
  ${mavros_msgs_INCLUDE_DIRS}
)

#===== Executables to generate
# Global Positioning Test
add_executable(setRates
  src/setRates.cpp
) 

target_link_libraries(setRates
  ${roscpp_LIBRARIES}
  ${std_msgs_LIBRARIES}
  ${catkin_LIBRARIES}
)

