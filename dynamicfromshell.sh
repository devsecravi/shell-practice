#!/bin/bash

START=$(date +%s)

echo "starting time is: $START"

END=$(date +%s)
echo "End time is:$END"
TOTAL=$(($END-$START))

echo "Script Excuted Time:$TOTAL"