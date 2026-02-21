#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "This command has to be run with superuser privileges"
   exit 1
fi

validate() {
     if [ $1 -ne 0 ]; then
      echo "$2.....FAILURE"
      else
      echo "$2....SUCESS"
    fi
}
 
echo "Installing..."

for package in $@ 
do 
if [ $? -ne 0]; then
   echo "$package not installed, installing now"
   dnf install $package -y 
   validate $? $package "Installing"
   else
   echo "Already installed package: $package"
done



