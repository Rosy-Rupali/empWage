#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPartTime=2
isFullTime=1
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
	 $isFullTime) 
			echo "Employee is full-time present"
			empHrs=8
				;;
	$isPartTime)
			echo "Employee is part-time present"
			empHrs=8
				;;
		*) 
			echo "Employee is absent"
			empHrs=0
				;;
esac
salary=$(($empHrs*$empRatePerHr))
