#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
   echo "This command has to be run with superuser privileges"
   exit 1
fi

mkdir -p $LOGS_FOLDER
validate() {
     if [ $1 -ne 0 ]; then
      echo "$2.....FAILURE" | tee -a $LOGS_FILE
      else
      echo "$2....SUCESS" | tee -a $LOGS_FILE
    fi
}
        
 
echo "Installing..."




for package in $@;
do 
    dnf list installed $package &>> $LOGS_FILE
   if [ $? -ne 1 ]; then
      echo "$package not installed, installing now"
      dnf install $package -y  &>> $LOGS_FILE
      validate $? $package "Installing" | tee -a $LOGS_FILE
   else
      echo "Already installed package: $package" | tee -a $LOGS_FILE
   fi
done



