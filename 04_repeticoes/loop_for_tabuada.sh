#!/bin/bash
# =============================================================================
# Script:      loop_for_tabuada.sh
# Descrição:   Solicita um número inteiro ao usuário e exibe sua tabuada
#              completa (de 1 a 10) utilizando a estrutura de repetição for.
# Autor:       Rafael Queiróz
# Versão:      1.1.0
# Data:        2026-04-21
# Uso:         ./loop_for_tabuada.sh
# =============================================================================

# Solicita um número inteiro ao usuário
# O valor digitado é armazenado na variável 'numero'
read -p "Digite um número: " numero

# Itera o contador de 1 até 10 para montar a tabuada completa
# Sintaxe: for VAR in $(seq INICIO FIM)  — gera a sequência numérica
for contador in $(seq 1 10); do
    # Calcula o resultado da multiplicação usando expansão aritmética $(( ))
    resultado=$((numero * contador))

    # Exibe a linha da tabuada no formato:  N x C = R
    echo "$numero x $contador = $resultado"
done