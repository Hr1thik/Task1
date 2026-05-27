#!/bin/bash

#List of EC2 Instance
echo "List of EC2 InstanceId"
aws ec2 describe-instances --region ap-south-1 | jq '.Reservations[].Instances.[].InstanceId'


echo "CPU USAGE"
echo
top -bn | grep "CPU's";
echo

echo "MEMORY USAGE"
echo
free -h
echo

echo "DISK USAGE"
echo
df -h
echo


#END

