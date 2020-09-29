##!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
echo "Attendance"
R1=$(( $RANDOM % 2 ))
if [ $R1 -eq 0 ]
then
echo "A"
else
echo "P"
R2=$(( $RANDOM % 8 + 1 ))
if [ $R2 -eq 8 ]
then
echo "Full Day"
elif [ $R2 -eq 4 ]
then
echo "Half Day"
else
echo $R2
W=$(( $R2 * 20 ))
echo "DailyWage : $W"
fi
fi
