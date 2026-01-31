#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripts"
LOGS_FILE="/var/log/shell-scripts/$0.log"
mkdir -p $LOGS_FOLDER

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi


VALIDATION()
{
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

dnf install nginx -y
VALIDATION $? "Installing Nginx" &>> $LOGS_FILE


dnf install mysql -y

VALIDATION $? "Installing MySQL" &>> $LOGS_FILE


dnf install nodejs -y

VALIDATION $? "Installing nodejs" &>> $LOGS_FILE
