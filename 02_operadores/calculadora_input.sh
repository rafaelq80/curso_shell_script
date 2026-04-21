#!/bin/bash
# =============================================================================
# Script:      calculadora_input.sh
# Descrição:   Solicita dois números ao usuário e realiza as quatro operações
#              aritméticas básicas (soma, subtração, multiplicação e divisão).
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./calculadora_input.sh
# =============================================================================

# Solicita os operandos ao usuário via terminal
# O flag -p exibe a mensagem de prompt sem quebra de linha antes da entrada
read -p "Digite o primeiro número: " numero1
read -p "Digite o segundo número: " numero2

# Calcula e exibe a soma entre numero1 e numero2
# A sintaxe $(( )) é usada para avaliação de expressões aritméticas em bash
soma=$(($numero1 + $numero2))
echo "$numero1 + $numero2 = $soma"

# Calcula e exibe a subtração de numero2 em relação a numero1
subtracao=$(($numero1 - $numero2))
echo "$numero1 - $numero2 = $subtracao"

# Calcula e exibe o produto entre numero1 e numero2
multiplicacao=$(($numero1 * $numero2))
echo "$numero1 * $numero2 = $multiplicacao"

# Calcula e exibe a divisão inteira de numero1 por numero2
# Atenção: $(( )) realiza apenas divisão inteira; decimais são truncados
divisao=$(($numero1 / $numero2))
echo "$numero1 / $numero2 = $divisao"