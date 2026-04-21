#!/bin/bash
# ==============================================================================
# Exemplo de uso de todos os operadores de comparação de strings no Bash
# ==============================================================================

A="banana"
B="banana"
C="maçã"

echo "Valores: A=$A  B=$B  C=$C"
echo "=================================================="

# = (igual a): verifica se A é igual a B
if [ "$A" = "$B" ]; then
  echo "=:   A ($A) é igual a B ($B) ✔"
fi

# != (diferente de): verifica se A é diferente de C
if [ "$A" != "$C" ]; then
  echo "!=:  A ($A) é diferente de C ($C) ✔"
fi

# < (menor que em ordem alfabética): verifica se A vem antes de C
if [[ "$A" < "$C" ]]; then
  echo "<:   A ($A) vem antes de C ($C) em ordem alfabética ✔"
fi

# > (maior que em ordem alfabética): verifica se C vem depois de A
if [[ "$C" > "$A" ]]; then
  echo ">:   C ($C) vem depois de A ($A) em ordem alfabética ✔"
fi

echo "--------------------------------------------------"
echo "Operadores unários (verificação de string):"
echo "--------------------------------------------------"

# -z (zero): verifica se a string está vazia
VAZIA=""
if [ -z "$VAZIA" ]; then
  echo "-z:  a variável VAZIA está vazia ✔"
fi

# -n (not zero): verifica se a string não está vazia
if [ -n "$A" ]; then
  echo "-n:  A ($A) não está vazia ✔"
fi

echo "=================================================="