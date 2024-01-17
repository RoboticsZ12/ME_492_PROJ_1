# BASH SCRIPT: pub.sh
#FUNCTION PARAMETER

#-------------------------------------------
# THIS FUNCTION WILL OUTPUT THE PARAMETERS 
# THAT HAVE BEEN INPUTTED BY THE USER IN 
# ANOTHER FILE. 
#-------------------------------------------
function parameter()
{
# DECLARATION OF THE FOUR PARAMTERS. 
opt ="$1"
topic_name ="$2"
msg_type ="$3"
msg ="$4"

# -z means that the string returns a zero string
# if you want to output the amount of parameters intputted, use {$#}
# {$} in the below if else is used to reference the previous parameters described.
if[ "$opt" == -z && "$topic_name" == -z && "$msg_type" == -z &&  "$msg" == -z ]; then
  echo "The number of arguments inputted is: $#"
  echo "The parameters have no inputs."
  
elif[ "$opt" != -z || "$topic_name" != -z || "$msg_type" != -z ||  "$msg" != -z ]; then
  echo "Parameter: \n"
  echo "opt: $opt \n"
  echo "topic_name: $topic_name \n"
  echo "msg_type: $msg_type \n"
  echo "msg: $msg \n"
exit 1
# fi indicates the end of the if/else 
fi

  echo "Publishing now. Press any key to stop. \n"
  read stop_input
  sleep 1

# THIS LOOP WILL RUN AND PUBLISH ALL ARGUMENTS WHILE, -Z, THERE IS NO STRING DETECTED
  while [$stop_input == -z]; do 
    echo "pub: $opt $topic_name $msg_type $msg \n"
  if[$stop_input != -z]; then 
    echo "Hope you enjoyed the loop."
    break
  fi
# PRINT OUT ECHO ABOVE EVERY 1 SECOND. 
  sleep 1
}
echo "jack"
# This line is used to make this function accessible to outside functions.
export -f paramter
