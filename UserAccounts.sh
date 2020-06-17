#!/bin/bash
echo "Linux User Accounts"
awk 'BEGIN {FS=":"; print "Username\t\tUserID\t\tGroupID\t\tHome\t\tShell\n---------------"; }
    {print $1,"\t\t",$3,"\t\t",$4,"\t\t",$6,"\t\t",$7;}
    END { print "---------\nFile Complete" }' /etc/passwd
    