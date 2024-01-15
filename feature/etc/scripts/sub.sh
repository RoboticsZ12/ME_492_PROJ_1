# BASH FILE: sub.sh
#ECHO TO THE TERMINAL

#--------------------------------------------------
# THIS FUNCTION WILL ACQUIRE THE <topic_name>, and 
# <file_name> from simple "read" USER INPUTS. 
# THESE ARGUMENTS HAVE CREATED IN <pub.sh>
#--------------------------------------------------

function argument_topic()
{
# CALLING <pub.sh> to assing arguments.
  source pub.sh
  parameter "opt" "topic_name" "msg_type" "msg"

# ASSIGNING topic_name argument
  echo "Enter the topic_name: "
  read topic_name
  echo "The name is: $topic_name \n"

# ASSIGNING file_name argument
  echo "Enter the file_name: "
  read file_name
  echo "The name is: $file_name \n"

# SETTING PUBLISHING RATE
  
}
echo "hello"
