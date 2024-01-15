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
  echo "Enter the file_name.cvs: "
  read file_name
  echo "The name is: $file_name \n"

  if[$file_name != $file_name.cvs]; then 
    echo "Please enter a file name that ends in .cvs"
  exit 1

  else
  fi

  echo "At what rate would you like to publish the data? "
  read pub_rate
  echo "Pub rate has been set to: $pub_rate \n"

  sleep $pub_rate
}
echo "hello"
