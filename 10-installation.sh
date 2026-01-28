#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
else
    echo "You are running the script with root privileges."
fi

dnf update -y
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installed successfully."
else
    echo "Failed to install Nginx."
    exit 1
fi