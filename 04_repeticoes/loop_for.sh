#!/bin/bash
# =============================================================================
# Script:      loop_for.sh
# Descrição:   Demonstra o uso da estrutura de repetição for, iterando
#              sobre uma lista de valores numéricos e alfanuméricos.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_for.sh
# =============================================================================

# Itera sobre uma lista de valores numéricos e alfanuméricos
# A variável x assume cada valor da lista a cada iteração
for x in 1 2 3 4 5 a b c d; do
	echo "O valor é $x"
done