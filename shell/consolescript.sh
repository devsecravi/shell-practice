#!/bin/bash


number1=$1
number2=$2

total=$((number1+number2))

echo "total amount of: $total" 

echo "enter number one:"
read number1
echo "enter number two:"
read number2

totoalam=$(($number1+$number2))
echo "total amount using read: $totoalam"