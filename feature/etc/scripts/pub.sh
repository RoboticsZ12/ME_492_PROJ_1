# BASH SCRIPT: pub.sh
#FUNCTION PARAMETER

#---------------------------------------------
# THIS FUNCTION WILL OUTPUT WHICH PARAMETER 
# THE USER INPUTS. 
# THIS FUNCTION WILL CHECK WHICH PARAMETER THE 
# THE USER WISHES TO OUTPUT. 
#----------------------------------------------
function parameter()
{
# opt = option, parameter one
opt ="$1"
# topic_name = name of topic for publisher, parameter 2
topic_name ="$2"
# mas_type = published msg type, parameter 3
msg_type ="$3"
# msg is value of msg, parameter 4
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
}
echo "jack"

# This line is used to make this function accessible to outside functions.
export -f paramter
