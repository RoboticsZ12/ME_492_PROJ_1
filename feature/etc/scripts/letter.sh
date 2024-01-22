# This script needs to to draw the first 2 letters of my 
# first name in 2 different colors. 

#!/bin/bash

source pub.sh


# TURN COLOR TO WHITE
ros2 service call /turtle1/set_pen "{r: 0, g: 0, b: 0 }"

parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -2.0, y: -2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"

#TURNS OFF THE PEN 
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen "{'off': 1}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 3.0, y: 2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"


# TURN PEN ON
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen "{'off': 0}"
# SET COLOR RED
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen "{r: 255, g: 0, b: 0}"

parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 1.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"
parameter --once /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -1.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: -0.0}}"



#teleport
#ros2 service call /turtle1/set_pen turtlesim/srv/SetPen "{'off': 1}"
#ros2 service call /turtle1/teleport_absolute turtlesim/srv/TeleportAbsolute "{x: -10,y: 0,theta: 0}"


