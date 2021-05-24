#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPartTime=2
isFullTime=1
maxHrsInMonth=4
numWorkingDays=20
empRatePerHr=20

totalEmpHrs=0
totalWorkingDays=0

function getWorkHours() {
	case $1 in
		 $isFullTime) 
				empHrs=8
					;;
		$isPartTime)
				empHrs=8
					;;
			*) 
				empHrs=0
					;;
	esac
	echo $empHrs
}

function calcDailyWage() {
	local empHr=$1
	wage=$(($empHr+$empRatePerHr))
	echo $wage
}

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
		empHrs=$( getWorkHours $((RANDOM%3)) )
		totalEmpHrs=$(($totalEmpHrs+$empHrs))
		empDailyWage[$totalWorkingDays]=$( calcDailyWage $empHrs )
done

totalSalary=$( calcDailyWage $totalEmpHrs )
echo "Daily wage "${empDailyWage[@]}
echo "All keys "${!empDailyWage[@]}
