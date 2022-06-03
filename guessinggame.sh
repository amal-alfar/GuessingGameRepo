
function check_func {

if [ $1 -gt $2 ]
then
	echo "your answer is hiegher than the exact total number of files, please try to guess again : "

elif  [ $1 -lt $2 ]
then
	echo "your answer is lower than the exact total number of files, please try to guess again : "
fi 

}

my_wc_cmd="ls | wc -l" 
total_files=`eval $my_wc_cmd`

echo "How many files are in the current directory ? "
read entered_no


while [ $total_files != $entered_no ]
  do
	
	message=$(check_func "$entered_no" "$total_files")
	echo $message
	read entered_no
  done
	
if [ $total_files -eq $entered_no ]
then

 echo "Congratulation, your answer is correct!"
 
fi 



