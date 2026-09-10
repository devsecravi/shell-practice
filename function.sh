#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "You are not root user, please run as root"
    exit 1
fi

mkdir -p $LOGS_FOLDER

validate(){
      
      if [ $1 -ne 0 ]; then
             echo "$2 ....Filed" | tee -a $LOGS_FILE
             exit 1
        else
             echo "$2 ....Success" | tee -a $LOGS_FILE
        fi
}

dnf remove nginx -y &>> $LOGS_FILE

validate $? "nginx installation"

dnf remove mysql -y &>> $LOGS_FILE

validate $? "mysql installation"

dnf remove nodejs -y &>> $LOGS_FILE
validate $? "nodejs installation"