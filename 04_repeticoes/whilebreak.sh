#!/bin/bash
# Loop while com break condicional

read -p "Digite um número para parar: " PARAR

counter=1
while [ $counter -le 10 ]; do
  echo $counter
  ((counter++))
  if [ "$counter" -eq "$PARAR" ]; then
    break
  fi
done
echo "loop encerrado"
echo "counter é igual a $counter"