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

for package in $@
   
do
    dnf list installed$package &>>$LOGS_FILE
    if [ $? -eq 0 ]; then
        echo "$package is not installed, installing now" | tee -a $LOGS_FILE
        dnf install $package -y &>>$LOGS_FILE
        validate $? "Installing $package"
    else
         echo "$package is already installed" | tee -a $LOGS_FILE
    fi
done