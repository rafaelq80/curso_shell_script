#!/bin/bash
# =============================================================================
# Script:      loop_while_continue.sh
# Descrição:   Demonstra o uso do comando continue dentro de um laço while.
#              O laço conta de 1 até 10 e, ao atingir o número informado pelo
#              usuário, pula o restante da iteração atual e segue para a próxima.
#              Observação: qualquer instrução após o continue não será executada.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_while_continue.sh
# =============================================================================

# Solicita ao usuário um número entre 1 e 10
# O valor é armazenado na variável PULAR
read -p "Digite um número ENTRE 1 e 10: " PULAR

# Inicializa o contador em 1
contador=1

# Repete enquanto o contador for menor ou igual a 10
while [ $contador -le 10 ]; do

    # Exibe o valor atual do contador
    echo $contador

    # Incrementa o contador
    ((contador++))

    # Verifica se o contador atingiu o número informado pelo usuário
    # -eq: comparador aritmético de igualdade (equal)
    if [ $contador -eq $PULAR ]; then
        echo "Condição atingida — pulando para a próxima iteração"

        # Interrompe a iteração atual e retorna ao início do laço while
        # ATENÇÃO: nenhuma instrução após o continue será executada
        continue

        # Esta linha nunca será executada
        echo "após o continue"
    fi

    echo "O laço continua..."

done

echo "Loop encerrado"
echo "Contador é igual a $contador"