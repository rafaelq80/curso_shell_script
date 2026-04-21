#!/bin/bash
# =============================================================================
# Script:      test.sh
# Descrição:   Compara dois valores utilizando o comando test e exibe
#              o resultado da comparação.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./test.sh
# =============================================================================

# Compara dois valores usando o comando test
# test 100 -lt 99: verifica se 100 é menor que 99 (-lt = less than)
# && echo "Sim": executado se a comparação for verdadeira (código de saída 0)
# || echo "Não": executado se a comparação for falsa (código de saída diferente de 0)
test 100 -lt 99 && echo "Sim" || echo "Não"