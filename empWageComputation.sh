#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPartTime=2
isFullTime=1
maxHrsInMonth=4
numWorkingDays=20
empRatePerHr=20

totalEmpHrs=0
totalSalary=0
totalWorkingDays=0

function getWorkingHours() {
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

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
		empHrs=$( getWorkingHours $((RANDOM%3)) )
		totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo "salary of anEmployee= "$totalSalary
