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
echo "Employee Type"
R3=$(( $RANDOM % 12 + 1 ))
if [ $R3 -eq 8 ]
then 
echo "Part Time"
elif [ $R3 -eq 12 ]
then 
echo "Full Time"
else
echo "Workin on Hoursly Basis"
fi

echo "Employee Type with Switch Case"
case $R3 in 
8)
echo "Part Time"
;;
12)
echo "Full Time"
;;
*)
echo "Working on Hourly Basis"
;;
esac

echo "Wages for 20 days"
day=20
W=0
for i in `seq $day`
do
R=$(( $RANDOM % 8 + 1 ))
cal=$(( $R * 20 ))
echo $cal
W=$(( $W + $cal ))
done
echo "Total monthly wage is $W Rs"

