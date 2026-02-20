#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Plese try to excute commend with root user"
   exit 1
fi

echo "disaling nodjs"
dnf module disable nodejs -y

if [ $? -ne 0 ]; then
   echo "enable nodejs is...FAIL"
   else
   echo "enable nodejs is...SUCESS"

echo "enable nodejs"
dnf module enable nodejs:20 -y

if [ $? -ne 0 ]; then
   echo "enable nodejs is...FAIL"
   else
   echo "enable nodejs is...SUCESS"

echo "installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
   echo "nodejs installing is...FAIL"
   else
   echo "nodejs installing is...SUCESS"