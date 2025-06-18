#!/bin/bash

#installing sql database 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR:: Please run with root user access"
  exit 1
fi 
# it is our responsibilty to check installation is success or not
yum update -y 
yum install mysql -y 

if [ $? -ne 0 ]
then 
  echo "Installation of mysql is error"
  exit
else 
  echo "Installation of mysql is success"
fi