#!/bin/bash
# To zip the files and directories to other directory
user=$id
# path we want to store compress file
_user="$(id -u -n)"
_uid="$(id -u)"
echo "User name : $_user"
echo "User name ID (UID) : $_uid"
#Current status
read -p "Enter the path: " path

if [ $_uid == 0 ]
then
	#for root user
	echo "Contiune the process, zip file created."
	find /usr/share/doc -type f \( -name "*.pdf" -o -name "*.txt" -o -name "*.html" \) > $path
	cat pro.txt
	gzip -k pro.txt

else
	echo "Please enter as a root"
	exit 1


	
	
fi
