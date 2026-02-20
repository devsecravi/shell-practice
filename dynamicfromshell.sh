#!/bin/bash

START=$(+%s date)

echo "starting time is: $START"

END=$(+%s date)
echo "End time is:$END"
TOTAL=(($START-$END))

echo "Script Excuted Time:$TOTAL"