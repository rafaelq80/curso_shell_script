#!/bin/bash
# =============================================================================
# Script:      loop_while.sh
# Descrição:   Solicita um número inteiro ao usuário e exibe sua tabuada
#              completa (de 1 a 10) utilizando a estrutura de repetição while
#              com contador e incremento manual.
# Autor:       Rafael Queiróz
# Versão:      1.2.0
# Data:        2026-04-21
# Uso:         ./loop_while.sh
# =============================================================================

# Solicita um número inteiro ao usuário
# O valor digitado é armazenado na variável 'numero'
read -p "Digite um número: " numero

# Inicializa o contador em 1 (primeiro fator da tabuada)
contador=1

# Repete enquanto o contador for menor ou igual a 10
while [ $contador -le 10 ]; do
    # Calcula o resultado da multiplicação usando expansão aritmética $(( ))
    resultado=$((numero * contador))

    # Exibe a linha da tabuada no formato:  N x C = R
    echo "$numero x $contador = $resultado"

    # Incrementa o contador para avançar para o próximo fator
    ((contador++))
done