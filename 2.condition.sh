#!/bin/bash

#installing git software  

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR:: Please run with root user access"
  exit 1
fi 
# it is our responsibilty to check installation is success or not

yum install git -y 

if [ $? -ne 0 ]
then 
  echo "Installation of mysql is error"
  exit
else 
  echo "Installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then 
  echo "Installation of postfix is error"
  exit
else 
  echo "Installation of postfix is success"
fi
