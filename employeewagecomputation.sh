##!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
echo "Attendance"
R=$(( $RANDOM % 2 ))
if [ $R -eq 0 ]
then
echo "A"
else
echo "P"
fi
