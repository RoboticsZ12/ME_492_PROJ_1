#!/bin/bash

#BASH SCRIPT: pub.sh
#FUNCTION PARAMETER

#----------------------------------------- #
# THIS FUNCTION WILL OUTPUT THE PARAMETERS #
# LISTED BELOW.                            #
#----------------------------------------- #
function parameter() {


  # ---------------------------------- #
  # DECLARATION OF THE FOUR PARAMTERS. #
  # NO SPACES TO OPERATE CORRECTLY.    #
  #----------------------------------- #
  opt="$1"
  topic_name="$2"
  msg_type="$3"
  msg="$4"


#------------------------------------- #
# OUTPUT THE TOPIC_NAME TO THE CONSOLE #
#------------------------------------- #
  echo $topic_name
  ros2 topic pub $opt $topic_name $msg_type "$msg"
}
# END FILE