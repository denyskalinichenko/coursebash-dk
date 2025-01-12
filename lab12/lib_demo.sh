#lab 12_FULL using own function. Using separate file for functions


#!/bin/bash

. ./lib_functions.sh

echo " "
echo "Test Function #1:"
user_dir dkalinichenko
echo " "

sleep 1

echo " "
echo "Test Function #2:"
display_dir /home/dkalinichenko 0
echo " "

