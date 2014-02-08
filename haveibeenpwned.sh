#!/usr/bin/env bash 


echo  "Please enter email address to check against http://haveibeenpwned.com"

read choice
response=$(curl --write-out %{http_code} --silent --output /dev/null "https://haveibeenpwned.com/api/breachedaccount/$choice")

if [ "$response" = "404" ];then
    echo "Congo..You are safe "

elif [ "$response" = "400" ];then
    echo "Upps...Something went wrong."
 
  
else
    temp=$(curl --silent --request GET "https://haveibeenpwned.com/api/breachedaccount/$choice")
    echo  "You have been pwned in "$temp" breach "
    
fi
