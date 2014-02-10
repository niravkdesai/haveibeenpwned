#!/usr/bin/env bash

[ $# -eq 0 ] && { echo "Usage: ./$0 emaillist"; exit 1; }

if [ "$1" == "-h" ]; then
  echo "Usage: ./$0 emaillist"
  exit 1

fi

dos2unix -q $1
cat $1 | while read choice
do
response=$(curl --write-out %{http_code} --silent --output /dev/null "https://haveibeenpwned.com/api/breachedaccount/$choice")

if [ "$response" = "404" ];then
echo "Congo. $choice is safe "

elif [ "$response" = "400" ];then
echo "Upps...Something went wrong."
 
  
else
temp=$(curl --silent --request GET "https://haveibeenpwned.com/api/breachedaccount/$choice")
    echo "$choice has been pwned in "$temp" breach "
    echo "$choice	$temp" >> out.csv	
    
fi
done
echo "Output saved into out.csv(Tab seprated)file"


