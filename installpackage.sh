#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "This command has to be run with superuser privileges"
fi
dnf install nginx -y
echo "completed"