#! /usr/bin/bash

# get dataBase name from user
read -p "Enter database name to connect : " dbname

# convert any space to ( _ )
while [[ $dbname == *" "* ]] ; do
    dbname="${dbname/ /_}"    
done

#check if dataBase is found
if [[ -z $dbname || ! -d $path"/"$dbname ]] ; then
	echo -e "${red}  Database not Found ${reset}"
	source main.sh
else
	export $dbname
	source db_menu.sh
fi
