#!/bin/bash
set -e

echo "My name is Reddisekhar "
echoo "This is error script"
echo "No error"

trap "echo 'An error occurred in $LINENO. $BASH_COMMAND Exiting...'; exit 1" ERR
