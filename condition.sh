#!/bin/bash

echo "if the number is greater than 10"

NUMBER=$1

if [ $NUMBER -ge 10]
then 
  echo "$NUMBER is greater than 10"
else 
  echo "$NUMBER is not greater than 10"
fi