# lab 12 - find user home dir using function() 


#!/bin/bash

function user_dir(){
	local USER=$1
	local HOME_DIR=$(grep $USER /etc/passwd | cut -d : -f 6)
	echo $HOME_DIR
}

user_dir dkalinichenko

#zmienne zidentyfikowane wewnatrz funkcje sa widoczne zewnatrz funkcji - ITS A !!PROBLEM!! Use "local"
echo $USER
echo $HOME_DIR



