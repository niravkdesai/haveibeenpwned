#!/usr/bin/env bash 


echo  "Please enter email address to check against https://haveibeenpwned.com"

read choice
response=$(curl --write-out %{http_code} --silent --output /dev/null "https://haveibeenpwned.com/api/breachedaccount/$choice")

if [ "$response" = "404" ];then
    echo "Congralaution!!You are safe "

elif [ "$response" = "400" ];then
    echo "Upps.Something went wrong." 
 
  
else
    temp=$(curl --silent --request GET "https://haveibeenpwned.com/api/breachedaccount/$choice")
    echo  "You have been pwned in "$temp" breach "
    echo  "Do you require further Details?(y/n)"
    read ans
    if [ "$ans" = "y" ] || [ "$ans" = "Y" ] ;then
	curl --silent --request GET "https://haveibeenpwned.com/api/v2/breachedaccount/$choice"|python -mjson.tool > $choice.txt
	cat $choice.txt|sed -e 's!http\(s\)\{0,1\}://[^[:space:]]*!!g' -e 's/[@#\$%^&*()=039"]//g' -e 's/<\/td>//g' -e 's/<em>//g' -e 's/<\/em>//g' -e 's/<a//g'  -e 's/<\/a>//g'  >  Breach_$choice.txt
	cat Breach_$choice.txt
	rm $choice.txt

	echo "Output saved it into Breach_$choice.txt file"
    fi

    if [ "$ans" = "n" ] || [ "$ans" = "N" ] ;then 	
	exit 1
    fi
	    
fi
