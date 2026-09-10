#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"

if [ $USERID -ne 0 ]; then
    echo "You are not root user, please run as root"
    exit 1
fi


validate(){
      
      if [ $1 -ne 0 ]; then
             echo "$2 ....Filed"
             exit 1
        else
             echo "$2 ....Success"
        fi
}

dnf remove nginx -y 

validate $? "nginx installation"

dnf remove mysql -y

validate $? "mysql installation"

dnf remove nodejs -y
validate $? "nodejs installation"