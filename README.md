haveibeenpwned
==============

Check if you have an account that has been compromised in a data breach Origianl site is https://haveibeenpwned.com/
Bash script for checking email address against https://haveibeenpwned.com/ `s breach database.


Usage:-

root@bt:~# cd Downloads/haveibeenpwned/

root@bt:~/Downloads/haveibeenpwned# sh haveibeenpwned.sh 
Please enter email address to check against https://haveibeenpwned.com
troyhunt%40hotmail.com
You have been pwned in ["Adobe"] breach 
Do you require further Details?(y/n)
y
[
    {
        "AddedDate": "2013-12-4T00:12Z", 
        "BreachDate": "2013-10-4", 
        "DataClasses": [
            "Email", 
            "Password", 
            "Password hint", 
            "Username"
        ], 
        "Description": "The big one. In October 2013, 153 million accounts were breached with each containing an internal ID, username, email, <em>encrypted</em> password and a password hint in plain text. The password cryptography was poorly done and <a href=\"http://stricture-group.com/files/adobe-top100.txt\"> many were quickly resolved back to plain text</a>. The unencrypted hints also <a href=\"http://www.troyhunt.com/2013/11/adobe-credentials-and-serious.html\">disclosed much about the passwords</a> adding further to the risk that hundreds of millions of Adobe customers already faced.", 
        "Domain": "adobe.com", 
        "Name": "Adobe", 
        "PwnCount": 152445165, 
        "Title": "Adobe"
    }
]
Output saved it into troyhunt%40hotmail.com.txt file

