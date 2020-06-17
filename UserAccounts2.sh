#!/bin/bash

#Set your colour variables. These will be used throughout the megamenu.sh script
Black='\'033'\e'[30m
Red='\'033'\e'[31m  
Green='\'033'\e'[32m 
Blue='\'033'\e'[34m 
Purple='\'033'\e'[35m  
Cyan='\'033'\e'[36m
Grey='\'033'\e'[37m

echo -e "${Cyan}Linux User Accounts"
awk 'BEGIN {FS=":";
printf("%-20s%-11s%-31s%-16s%-16s\n","Username","UserID","GroupID","Home","Shell")}
{printf("%-20s%-11s%-31s%-16s%-16s\n",$1,$3,$4,$6,$7)}
END{print "Total users = " NR}' /etc/passwd