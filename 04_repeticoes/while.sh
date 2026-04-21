#!/bin/bash
# Loop while com break condicional

counter=1
while [ $counter -le 10 ]; do
  echo $counter
  ((counter++))
  if [ "$counter" == "$1" ]; then
    break
  fi
done
echo "loop encerrado"
echo "counter é igual a $counter"