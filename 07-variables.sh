#!/bin/bash

###Demo of specifying variables via command line arguments####
echo "Args passed to the script are: $@"
echo "Number of args passed to the script: $#"
echo "Script name is: $0"
echo "Script executed by user: $USER"
echo "Home directory of the user is: $HOME"
echo "Current working directory is: $PWD"

sleep 100 &

echo "Process ID of the last background command is: $!"
echo "Process ID of the current shell script is: $$"
echo "Args passed to the script are: $*"
