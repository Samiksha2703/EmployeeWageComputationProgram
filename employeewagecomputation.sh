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

echo "Monthy Wage with condition eithe days=20 or hrs=100"
day=0
hrs=0
W=0
echo "Workin hours per day"
while [ $day -lt 20 -a $hrs -lt 100 ]
do
R=$(( $RANDOM % 8 + 1 ))
echo $R
cal=$(( $R * 20 ))
W=$(( $W + $cal ))
hrs=$(($hrs + $R ))
day=$(( $day + 1 ))
done
echo "day=$day and hrs=$hrs" 
echo "Monthly Wage : $W Rs"

CalHrs() {
Totalhrs=0
for i in `seq $days`
do
hrs=$(( $RANDOM % 8 + 1 ))
echo $hrs
Totalhrs=$(( $Totalhrs + $hrs ))
done
}
echo "Calculate work hours for one month"
days=30
CalHrs
echo "Total working hours for a month $Totalhrs"

days=7
totalwage=0
declare -A wage
echo "Storing and priting daily wages and total wages in an array"
for i in `seq $days`
do
R=$(( $RANDOM % 8 + 1 ))
W=$(( $R * 20 ))
wage[$i]=$W
totalwage=$(( $totalwage + $W ))
done
wage[$(( $i + 1 ))]=$totalwage
for i in `seq 8`
do
echo $i - ${wage[$i]}
done
