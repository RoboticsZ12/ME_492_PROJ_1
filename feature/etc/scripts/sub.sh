#!/bin/bash
#BASH FILE: sub.sh
#ECHO TO THE TERMINAL

#--------------------------------------------------
# THIS FUNCTION WILL ACQUIRE THE <topic_name>, and
# <file_name> from simple "read" USER INPUTS.
# THESE ARGUMENTS HAVE CREATED IN <pub.sh>
#--------------------------------------------------

# CALLING <pub.sh> to assing arguments.
source ./pub.sh

function argument_topic() {
  # ASSIGNING topic_name argument
  echo "Enter the topic_name: "
  read topic_name
  echo "The name is: $topic_name "

  sleep 1

  # ASSIGNING file_name
  echo "Enter the file_name: "
  read file_name
  echo "The file name is: $file_name"

  sleep 1

  # SETTING PUBLISHING RATE TO THE TERMINAL
  echo "At what rate would you like to publish the data? "
  read pub_rate
  echo "Pub rate has been set to: $pub_rate \n"

  # CALLING FUNCTION "parameter" FROM FILE pub.sH
  # >> creates a new if nothing exists.
  ros2 topic echo $topic_name >$file_name.csv
}