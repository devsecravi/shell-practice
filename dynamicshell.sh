#!/bin/bash

START=$(date +%s)
echo "Start Date From: $START"
sleep 10
END=$(date +%s)
echo "End Date From: $END"
TOTALTIME=$(($END-$START))
echo "TOTAL TIME CALCULAT: $TOTALTIME"