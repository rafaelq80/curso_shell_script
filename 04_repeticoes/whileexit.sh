#!/bin/bash

touch ./04_repeticoes/arquivo.txt

if [ $? -eq 0 ]; then
  echo "arquivo criado com sucesso"
  exit 0
else
  echo "erro ao criar o arquivo"
  exit 1
fi