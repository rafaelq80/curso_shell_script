#!/bin/bash

while true
do
  echo "Digite um valor:"
  read val
  if [ "$val" -eq 5 ]; then
    break
  fi
  echo "Valor incorreto, tente novamente!"
done
echo "Acertou! O valor é $val"