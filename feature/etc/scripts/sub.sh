# BASH FILE: sub.sh
#ECHO TO THE TERMINAL

function topic()
{
  source pub.sh
  parameter "opt" "topic_name" "msg_type" "msg"
  echo "The topic_name: \n"
  read topic_name
  echo "The topic name is: $topic_name \n"
}
