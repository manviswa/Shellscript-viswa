#!/bin/bash

# creating directory 

cd /opt/viswa 

if [ $? -ne 0 ]
then 
  echo "Installation of mysql is error"
else 
  mkdir /opt/viswa
  echo "Directory has been created"
fi