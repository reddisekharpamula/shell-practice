#!/bin/bash
NUM1=10
NUM2=20
SUM=$((NUM1 + NUM2))
echo "The sum of $NUM1 and $NUM2 is: $SUM"

#List example

FRUITS=("Apple" "Banana" "Cherry" "Date")
echo "Fruits in the list are: ${FRUITS[@]}"
echo "First fruit in the list is ${FRUITS[0]}"
echo "Total number of fruits: ${#FRUITS[@]}"