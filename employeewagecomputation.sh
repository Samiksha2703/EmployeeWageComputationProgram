#!/bin/bash/ 

#UC1

echo "Attendance"
random=$(( $RANDOM % 2 ))
if [ $random -eq 0 ]
then
echo "Absent"
else
echo "Present"
fi

#UC2

WAGE_PER_HR=20
FULL_DAY_HRS=8

daily_Wage=0

        random=$(( $RANDOM % 2 ))


        if [ $random -eq 1 ]
        then
                echo "Present"

                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
                echo "Daily Wage : $daily_Wage"
        else
                echo "Absent"
                echo "Daily Wage : 0"
        fi

#UC3

WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
daily_Wage=0
random=$(( $RANDOM % 3 ))
        if [ $random -eq 1 ]
        then
                echo "Present - FullDay"
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
                echo "Daily Wage : $daily_Wage"
        elif [ $random -eq 2 ]
        then
                echo "Present - PartTime"
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
                echo "Daily Wage : $daily_Wage"
        else
                echo "Absent"
                echo "Daily Wage : 0"
        fi

#UC4
	
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
daily_Wage=0
random=$(( $RANDOM % 3 ))
        case $random in
        1)
                echo "Present - FullDay"
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
                echo "Daily Wage : $daily_Wage"
        ;;
        2)
                echo "Present - PartTime"
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
                echo "Daily Wage : $daily_Wage"
        ;;
        *)
                echo "Absent"
                echo "Daily Wage : 0"
        ;;
        esac


#UC5

NUM_OF_WORKING_DAYS=20
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

daily_Wage=0
monthly_Wage=0

for i in `seq $NUM_OF_WORKING_DAYS`
do
        random=$(( $RANDOM % 3 ))


        case $random in

        1)
        echo "Present - FullDay"
	daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
        ;;

        2)
        echo "Present - HalfDay"
        daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
        ;;

        *)
        echo "Absent"
        daily_Wage=0
        ;;

        esac

        monthly_Wage=$(( $monthly_Wage + $daily_Wage ))
done

echo "Monthly Wage : $monthly_Wage"



#UC6

NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

monthly_Wage=0
totalEmpHrs=0
totalWorkingDays=0

echo "Calculating monthly wages with condition days!>20 or hrs!>100"

while [[ $totalEmpHrs -ne $MAX_HRS_IN_MONTH && $totalWorkingDays -ne $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        
	random=$(( $RANDOM % 3 ))
	

	case $random in


        1)
                #Present fullday
                empHrs=$FULL_DAY_HRS
                ;;

        2)
                #Present halfday
                empHrs=$PART_TIME_HRS
                ;;
        
	*)
                #absent
                empHrs=0
                ;;
        
	esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

echo $totalEmpHrs

monthly_Wage=$(( $totalEmpHrs * $WAGE_PER_HR ))

echo "Monthly Wage : $monthly_Wage"



#UC7


TotalWorkingHrs() {
while [[ $totalEmpHrs -ne $MAX_HRS_IN_MONTH && $totalWorkingDays -ne $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        random=$(( $RANDOM % 3 ))


        case $random in
        1)
                #Present fullday
                empHrs=8
                ;;
        2)
                #Present halfday
                empHrs=4
                ;;
        *)
                #absent
                empHrs=0
                ;;
        esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done
}

NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4
monthly_Wage=0

totalEmpHrs=0
totalWorkingDays=0

echo "Calculate work hours for one month"

TotalWorkingHrs

echo "Total working hours for a month $totalEmpHrs"


#UC8

Wage=()

NUM_OF_WORKING_DAYS=20
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

daily_Wage=0
monthly_Wage=0

for i in `seq $NUM_OF_WORKING_DAYS`
do
	random=$(( $RANDOM % 3 ))


        case $random in
        
	1)
                #Present - FullDay
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
        ;;
        
	2)
                #Present - HalfDay
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
        ;;
        
	*)
                #Absent
		daily_Wage=0
        ;;

        esac

	Wage[$i]=$daily_Wage
	
monthly_Wage=$(( $monthly_Wage + $daily_Wage ))

done

	Wage[$(( $i + 1))]=$monthly_Wage

echo ${!Wage[@]}

echo ${Wage[@]}


#UC9


declare -A Wage

NUM_OF_WORKING_DAYS=20
WAGE_PER_HR=20
FULL_DAY_HRS=8
PART_TIME_HRS=4

daily_Wage=0
monthly_Wage=0

for i in `seq $NUM_OF_WORKING_DAYS`
do
	random=$(( $RANDOM % 3 ))


        case $random in


        1)
                #Present - FullDay
                daily_Wage=$(( $WAGE_PER_HR * $FULL_DAY_HRS ))
        ;;
        2)
                #Present - HalfDay
                daily_Wage=$(( $WAGE_PER_HR * $PART_TIME_HRS ))
        ;;
        *)
                #Absent
		daily_Wage=0
        ;;

        esac

	Wage[$i]=$daily_Wage
	
monthly_Wage=$(( $monthly_Wage + $daily_Wage ))

done

	Wage[$(( $i + 1 ))]=$monthly_Wage

for i in `seq 21`
do
        echo "$i - ${Wage[$i]}"
done

