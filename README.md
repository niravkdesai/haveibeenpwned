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
Y
[
    {
        AddedDate: 21-12-4T:12Z, 
        BreachDate: 21-1-4, 
        DataClasses: [
            Email, 
            Password, 
            Password hint, 
            Username
        ], 
        Description: The big one. In October 21, 15 million accounts were breached with each containing an internal ID, username, email, encrypted password and a password hint in plain text. The password cryptography was poorly done and  href many were quickly resolved back to plain text. The unencrypted hints also  href much about the passwords adding further to the risk that hundreds of millions of Adobe customers already faced., 
        Domain: adobe.com, 
        Name: Adobe, 
        PwnCount: 152445165, 
        Title: Adobe
    }
]
Output saved it into Breach_troyhunt@hotmail.com.txt file
root@bt:~/Downloads/haveibeenpwned# 



