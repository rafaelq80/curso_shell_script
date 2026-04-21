#!/bin/bash
# =============================================================================
# Script:      comparacao_strings.sh
# Descrição:   Demonstra o uso de todos os operadores de comparação de strings
#              disponíveis no Bash, incluindo comparações de igualdade,
#              ordem alfabética e verificação de strings vazias.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./comparacao_strings.sh
# =============================================================================

# Define os valores de string utilizados nas comparações
texto1="banana"
texto2="banana"
texto3="maçã"

echo "=================================================="
echo -e "Valores definidos:\n texto1 = $texto1\n texto2 = $texto2\n texto3 = $texto3"
echo "=================================================="

# =============================================================================
# Operadores com colchetes simples [ ]
# Utilizados para comparações de igualdade e diferença entre strings
# =============================================================================

# = (igual a): verifica se texto1 é igual a texto2
if [ "$texto1" = "$texto2" ]; then
  echo "=:   texto1 ($texto1) é igual a texto2 ($texto2) ✔"
fi

# != (diferente de): verifica se texto1 é diferente de texto3
if [ "$texto1" != "$texto3" ]; then
  echo "!=:  texto1 ($texto1) é diferente de texto3 ($texto3) ✔"
fi

# =============================================================================
# Operadores com colchetes duplos [[ ]]
# Necessários para comparações de ordem alfabética entre strings
# =============================================================================

# < (menor que em ordem alfabética): verifica se texto1 vem antes de texto3
if [[ "$texto1" < "$texto3" ]]; then
  echo "<:   texto1 ($texto1) vem antes de texto3 ($texto3) em ordem alfabética ✔"
fi

# > (maior que em ordem alfabética): verifica se texto3 vem depois de texto1
if [[ "$texto3" > "$texto1" ]]; then
  echo ">:   texto3 ($texto3) vem depois de texto1 ($texto1) em ordem alfabética ✔"
fi

echo "--------------------------------------------------"
echo "Operadores unários (verificação de string):"
echo "--------------------------------------------------"

# =============================================================================
# Operadores unários — verificam o estado da string sem compará-la a outra
# =============================================================================

# -z (zero length): verifica se a string está vazia
VAZIA=""
if [ -z "$VAZIA" ]; then
  echo "-z:  a variável VAZIA está vazia ✔"
fi

# -n (not zero length): verifica se a string não está vazia
if [ -n "$texto1" ]; then
  echo "-n:  texto1 ($texto1) não está vazia ✔"
fi

echo "=================================================="