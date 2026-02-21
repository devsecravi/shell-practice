#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "This command has to be run with superuser privileges"
   exit 1
fi

validate() {
     if [ $? -ne 0 ]; then
      echo "Installing.....FAILURE"
      else
      echo "Installing....SUCESS"
    fi
}
validate 
echo "Installing..."

for package in $@ 
do 
   dnf install $package
   validate $package "Installing"
done



