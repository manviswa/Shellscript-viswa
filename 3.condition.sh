#!/bin/bash

# creating directory 

cd /opt/viswa 

if [ $? -ne 0 ]
then 
  echo "Installation of mysql is error"
  exit
else 
  mkdir /opt/viswa
  echo "Installation of mysql is success"
fi