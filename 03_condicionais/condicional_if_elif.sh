#!/bin/bash
# =============================================================================
# Script:      condicional_if_elif.sh
# Descrição:   Compara dois números e exibe se o primeiro é maior, menor
#              ou igual ao segundo.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./condicional_if_elif.sh
# =============================================================================

# Define os dois números a serem comparados
numero1=10
numero2=5

# Compara numero1 com numero2 e exibe o resultado
# -gt (greater than): verifica se numero1 é maior que numero2
# -lt (less than):    verifica se numero1 é menor que numero2
# else:               executado quando os dois números são iguais
if [ $numero1 -gt $numero2 ]; then
  echo "O primeiro número é maior que o segundo"
elif [ $numero1 -lt $numero2 ]; then
  echo "O segundo número é maior que o primeiro"
else
  echo "Os dois números são iguais"
fi