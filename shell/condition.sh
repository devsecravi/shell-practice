#!/bin/bash

num=25

FILE_FOLDER="/var/log/shell-script"
FILE_LOG="/var/log/shell-script/$0.log"

if [ $num -eq 23 ]; then
   echo "Given Number is equal to: $num"
elif [ $num -eq 24 ]; then
    echo "Given Number is Equal to: $num"
else
    echo "Given Number is different : $num"
fi


mkdir $FILE_FOLDER

for package in $@;    
do
         dnf list installed $package &>> $FILE_LOG
        if [ $? -ne 0 ]; then
            echo "instaling $package" |  tee $FILE_LOG
            dnf install $package -y &>> $FILE_LOG
        else 
            echo "already installed package name: $package" | tee $FILE_LOG
        fi
done







