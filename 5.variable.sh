#!/bin/bash

echo "This is called array, instead of single value it can hold multiple values"

PERSONS=("viswa" "hema" "jathin") #inside array we always refer values with index and it starts with 0

echo "First person: ${PERSONS[0]}"

#echo "all persons: ${PERSONS[@]}"

