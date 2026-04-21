#!/bin/bash
# ==============================================================================
# Exemplo de uso de todos os operadores de comparação numérica no Bash
# ==============================================================================

A=10
B=10
C=5

echo "Valores: A=$A  B=$B  C=$C"
echo "=================================================="

# -eq (igual a): verifica se A é igual a B
if [ "$A" -eq "$B" ]; then
  echo "-eq:  A ($A) é igual a B ($B) ✔"
fi

# -ne (diferente de): verifica se A é diferente de C
if [ "$A" -ne "$C" ]; then
  echo "-ne:  A ($A) não é igual a C ($C) ✔"
fi

# -gt (maior que): verifica se A é maior que C
if [ "$A" -gt "$C" ]; then
  echo "-gt:  A ($A) é maior que C ($C) ✔"
fi

# -ge (maior ou igual a): verifica se A é maior ou igual a B
if [ "$A" -ge "$B" ]; then
  echo "-ge:  A ($A) é maior ou igual a B ($B) ✔"
fi

# -lt (menor que): verifica se C é menor que A
if [ "$C" -lt "$A" ]; then
  echo "-lt:  C ($C) é menor que A ($A) ✔"
fi

# -le (menor ou igual a): verifica se B é menor ou igual a A
if [ "$B" -le "$A" ]; then
  echo "-le:  B ($B) é menor ou igual a A ($A) ✔"
fi

echo "--------------------------------------------------"
echo "Operadores com parênteses duplos (( )):"
echo "--------------------------------------------------"

# < (menor que entre parênteses duplos): verifica se C é menor que A
if (( "$C" < "$A" )); then
  echo "<:    C ($C) é menor que A ($A) ✔"
fi

# <= (menor ou igual a entre parênteses duplos): verifica se B é menor ou igual a A
if (( "$B" <= "$A" )); then
  echo "<=:   B ($B) é menor ou igual a A ($A) ✔"
fi

# > (maior que entre parênteses duplos): verifica se A é maior que C
if (( "$A" > "$C" )); then
  echo ">:    A ($A) é maior que C ($C) ✔"
fi

# >= (maior ou igual a entre parênteses duplos): verifica se A é maior ou igual a B
if (( "$A" >= "$B" )); then
  echo ">=:   A ($A) é maior ou igual a B ($B) ✔"
fi

echo "=================================================="