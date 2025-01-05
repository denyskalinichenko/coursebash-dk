#lab 5.2 - standard INPUT OUTPUT (use another script for automation)


#!/bin/bash

./tell_me.sh << END_OF_INPUT
/dkalinichenko/etc/
passwd
END_OF_INPUT

echo "Done!"

exit 0

