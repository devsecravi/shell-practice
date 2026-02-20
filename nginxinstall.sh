#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please excute with root user given commend"
fi

echo "Nginx installing...."
dnf install nginx 