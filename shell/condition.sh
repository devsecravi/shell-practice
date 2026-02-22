#!/bin/bash

num=25


if [ $num -eq 23 ]; then
   echo "Given Number is equal to: $num"
elif [ $num -eq 24 ]; then
    echo "Given Number is Equal to: $num"
else
    echo "Given Number is different : $num"
fi


for print in $num;
do
   echo "print upto $num: $print)"
done