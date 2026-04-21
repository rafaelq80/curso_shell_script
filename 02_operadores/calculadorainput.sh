#!/bin/bash

read -p "Digite o primeiro número: " NUMERO1
read -p "Digite o segundo número: " NUMERO2

SOMA=$(($NUMERO1 + $NUMERO2))
echo "$NUMERO1 + $NUMERO2 = $SOMA"

SUBTRACAO=$(($NUMERO1 - $NUMERO2))
echo "$NUMERO1 - $NUMERO2 = $SUBTRACAO"

MULTIPLICACAO=$(($NUMERO1 * $NUMERO2))
echo "$NUMERO1 * $NUMERO2 = $MULTIPLICACAO"

DIVISAO=$(($NUMERO1 / $NUMERO2))
echo "$NUMERO1 / $NUMERO2 = $DIVISAO"
