#!/bin/bash
# =============================================================================
# Script:      loop_until.sh
# Descrição:   Demonstra o uso da estrutura de repetição until, que é o
#              inverso do while: executa o bloco de comandos enquanto a
#              condição for FALSA e encerra quando ela se tornar VERDADEIRA.
#              Neste exemplo, o laço conta de 1 até 10 e para quando o
#              contador ultrapassar esse valor.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_until.sh
# =============================================================================

# Inicializa o contador em 1
contador=1

# Repete até que o contador seja MAIOR que 10
# Ou seja: executa enquanto [ $contador -gt 10 ] for FALSO
# -gt: comparador aritmético "greater than" (maior que)
until [ $contador -gt 10 ]; do

    # Exibe o valor atual do contador
    echo $contador

    # Incrementa o contador
    ((contador++))

done

echo "Loop encerrado"
echo "Contador é igual a $contador"