#!/bin/bash
# =============================================================================
# Script:      loop_while_break.sh
# Descrição:   Demonstra o uso da estrutura de repetição while com interrupção
#              condicional (break). O laço conta de 1 até 10, mas é encerrado
#              antecipadamente caso o contador atinja o valor informado pelo
#              usuário via teclado.
# Autor:       Rafael Queiróz
# Versão:      1.1.0
# Data:        2026-04-21
# Uso:         ./loop_while_break.sh
# =============================================================================

# Solicita ao usuário o número em que o laço deve ser interrompido
# O valor é armazenado na variável parar
read -p "Digite um número para parar: " parar

# Inicializa o contador em 1
contador=1

# Repete enquanto o contador for menor ou igual a 10
while [ $contador -le 10 ]; do

    # Exibe o valor atual do contador
    echo $contador

    # Incrementa o contador
    ((contador++))

    # Interrompe o laço se o contador atingir o valor definido pelo usuário
    # -eq: comparador aritmético de igualdade (equal)
    if [ "$contador" -eq "$parar" ]; then
        break
    fi

done

echo "Loop encerrado"
echo "Contador é igual a $contador"