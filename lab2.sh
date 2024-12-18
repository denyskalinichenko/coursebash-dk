#!/bin/bash

#lab2 - installer

IMPORT_DIR=/tmp/import
MODE700=700

echo "Creating directory $IMPORT_DIR"
mkdir $IMPORT_DIR
logger "Directory $IMPORT_DIR has been created"

echo "Changing perms on $IMPORT_DIR to $MODE700"
chmod $MODE700 $IMPORT_DIR
logger "Permissions for $IMPORT_DIR changed to $MODE700"

exit 0

