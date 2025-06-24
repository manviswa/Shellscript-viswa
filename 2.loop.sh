#!/bin/bash

# installing multiple softwares

for i in $@

do 
  yum install -y $i 
done
