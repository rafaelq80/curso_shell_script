#!/bin/bash

NUMERO1=10
NUMERO2=5

if [ $NUMERO1 -gt $NUMERO2 ]; then
  echo "the first number is greater then the second number"
elif [ $NUMERO1 -lt $NUMERO2 ]; then
  echo "the second number is greater then the first number"
else
  echo "the two numbers are equal"
fi