#!/bin/bash
# =============================================================================
# Script:      loop_do_while.sh
# Descrição:   O bash não possui a estrutura do...while nativamente. Este
#              script simula esse comportamento utilizando while true com
#              break condicional ao final do bloco, garantindo que o corpo
#              do laço seja executado ao menos uma vez antes de qualquer
#              verificação de condição — exatamente como o do...while
#              funciona em linguagens como C e Java.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_do_while.sh
# =============================================================================

# Inicializa o contador em 10
contador=10

# Laço infinito — simula o bloco "do" executando antes da checagem
while true; do

    # Corpo do laço — sempre executado ao menos uma vez
    echo "Contador: $contador"

    # Incrementa o contador
    ((contador++))

    # Condição de parada verificada APÓS a execução do bloco
    # Equivale ao "while (contador <= 10)" do do...while
    # -gt: comparador aritmético "greater than" (maior que)
		# Como foi inicializado com 10, ao chegar no if será 11,
		# saindo do loop
    if [ $contador -gt 10 ]; then
        break
    fi

done

echo "Loop encerrado"
echo "Contador é igual a $contador"