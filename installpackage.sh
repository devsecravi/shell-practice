#!/bin/bash

USERID=$(id -u)
LOGSFOLDER="/var/log/shell-script"
LOGSFILE="/var/log/shell-script/$0.txt"

if [ $USERID -ne 0 ]; then
   echo "This command has to be run with superuser privileges"
   exit 1
fi

validate() {
     if [ $1 -ne 0 ]; then
      echo "$2.....FAILURE" | &>> $LOGSFILE
      else
      echo "$2....SUCESS" | &>> $LOGSFILE
    fi
}
 
echo "Installing..."

for package in $@ 
do 
if [ $? -ne 0 ]; then
   echo "$package not installed, installing now"
   dnf install $package -y 
   validate $? $package "Installing" | &>> $LOGSFILE
   else
   echo "Already installed package: $package" | &>> $LOGSFILE
fi
done



