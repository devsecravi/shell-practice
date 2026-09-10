#!/bin/bash

USERID=$(id -u)

if [ $USERID -nq 0]; then
    echo "You are not root user, please run as root"
    exit 1
fi

echo "installing nginx web server"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Failed to install nginx"
else
    echo "nginx installed successfully"
fi