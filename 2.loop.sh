#!/bin/bash

# check the wheather the user has root access or not
DATE=$(date +%F) #It will print the date with human readble format like this "2025-06-25"
LOGDIR=/root/Shellscript-viswa/script-log
# logs will store this format: /root/Shellscript-viswa/script-log/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m" #Red color
G="\e[32m" #Green color
N="\e[0m"  #Normal color
Y="\e[33m" #Yellow color
if [ $USERID -ne 0];
then 
  echo -e "$R ERROR: please run this script with root access $N"
  exit 1
fi 

VALIDATE(){
    if [ $1 -ne 0];
    then 
       echo -e "Installing $2 ... $R FAILURE $N"
       exit 1
    else
       echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}

# installing multiple softwares

for i in $@

do 
  yum list installed $i &>>$LOGFILE
  if [ $? -ne 0]
  then 
      echo "$i is not installed, lets install it"
      yum install $i -y &>>$LOGFILE
      VALIDATE $? "$i"
  else    
      echo -e "$Y $i is already installed $N"
  fi

  #yum install -y $i 
done
