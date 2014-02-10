haveibeenpwned
==============

Check if you have an account that has been compromised in a data breach Origianl site is https://haveibeenpwned.com/
Bash script for checking email address against https://haveibeenpwned.com/ `s breach database.


Usage:-

root@bt:~/Downloads/haveibeenpwned# sh haveibeenpwned.sh 

Please enter email address to check against https://haveibeenpwned.com

troyhunt@hotmail.com

You have been pwned in ["Adobe"] breach 

Do you require further Details?(y/n)

N



Another bash script works with email list.It get email address from supplied file & check against site one by one.

root@bt:~# cat email.list 

help@microsoft.com

foo@bar.com

troyhunt@hotmail.com

root@bt:~# sh email_hibp.sh 

Usage: ./email_hibp.sh emaillist

root@bt:~# sh email_hibp.sh email.list 

help@microsoft.com has been pwned in ["Adobe"] breach 

foo@bar.com has been pwned in ["Adobe","Gawker","Stratfor"] breach 

troyhunt@hotmail.com has been pwned in ["Adobe"] breach 

Output saved into out.csv(Tab seprated)file
