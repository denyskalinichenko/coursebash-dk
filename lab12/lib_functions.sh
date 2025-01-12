# lab 12 - this is library for different functions() what should used in different scripts. Very usefull!
# DK
# v1


#!/bin/bash

#1 Function description 
function user_dir(){
        local USER=$1
        local HOME_DIR=$(grep $USER /etc/passwd | cut -d : -f 6)
        echo $HOME_DIR
}


#2 Function description
function display_dir(){
        local DIR_FILE=$1
        local LEVEL=$2

        #odstapienie miejsca dla katalogow i podkatalogow za pomoca ". "
        for ((n=0; n<$LEVEL; n++)); do
                echo -n '. '
        done

        if [[ -f $DIR_FILE ]]; then
                echo "FILE $DIR_FILE"
        elif [[ -d $DIR_FILE ]]; then
                echo "DIR $DIR_FILE"
                LEVEL=$(( $LEVEL + 1 ))

                for s in $(ls $DIR_FILE); do
                        display_dir $DIR_FILE/$s $LEVEL
                done
        fi
}

