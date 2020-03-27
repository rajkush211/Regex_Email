#!/bin/bash -x

#Description: Regex pattern to validate Email address
#Author: Raj Kush
#Date: 27 March 2020
clear

shopt -s extglob

#CONSTANTS
regexPattern="^[a-zA-Z]{1}\w*([_+.-]\w+)?@\w+.[a-zA-Z]{2,3}([.][a-zA-Z]{2})?$"

#Variables
emailAddress=0

function validateEmailAddress() {
	read -p "Enter Email address: " emailAddress
	if [[ $emailAddress =~ $regexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

validateEmailAddress

sleep 1
