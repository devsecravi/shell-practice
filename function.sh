#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "You are not root user, please run as root"
    exit 1
fi


validate(){
      
      if [ $1 -ne 0 ]; then
             echo "$2 ....Filed"
        else
             echo "$2 ....Success"
        fi
}

dnf install nginx -y 

validate $? "nginx installation"

dnf install mysql -y

validate $? "mysql installation"

dnf install nodejs -y
validate $? "nodejs installation"