 #!/bin/bash
# =============================================================================
# Script:      comparacao_numeros.sh
# Descrição:   Solicita três números ao usuário e demonstra o uso de todos
#              os operadores de comparação numérica disponíveis no Bash,
#              utilizando tanto a sintaxe [ ] quanto (( ))
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./comparacao_numeros.sh
# =============================================================================

# Solicita os valores ao usuário via terminal
read -p "Digite o primeiro valor:  " valor1
read -p "Digite o segundo valor:   " valor2
read -p "Digite o terceiro valor:  " valor3

echo "=================================================="
# Exibe os valores digitados, um por linha
# O flag -e habilita a interpretação de caracteres especiais como \n (quebra de linha)
echo -e "Valores digitados:\n valor1 = $valor1\n valor2 = $valor2\n valor3 = $valor3"
echo "=================================================="

# =============================================================================
# Operadores com colchetes simples [ ]
# Sintaxe compatível com sh e bash — recomendada para scripts portáveis
# =============================================================================

# -eq (equal): verifica se valor1 é igual a valor2
if [ "$valor1" -eq "$valor2" ]; then
  echo "-eq:  valor1 ($valor1) é igual a valor2 ($valor2) ✔"
fi

# -ne (not equal): verifica se valor1 é diferente de valor3
if [ "$valor1" -ne "$valor3" ]; then
  echo "-ne:  valor1 ($valor1) não é igual a valor3 ($valor3) ✔"
fi

# -gt (greater than): verifica se valor1 é maior que valor3
if [ "$valor1" -gt "$valor3" ]; then
  echo "-gt:  valor1 ($valor1) é maior que valor3 ($valor3) ✔"
fi

# -ge (greater or equal): verifica se valor1 é maior ou igual a valor2
if [ "$valor1" -ge "$valor2" ]; then
  echo "-ge:  valor1 ($valor1) é maior ou igual a valor2 ($valor2) ✔"
fi

# -lt (less than): verifica se valor3 é menor que valor1
if [ "$valor3" -lt "$valor1" ]; then
  echo "-lt:  valor3 ($valor3) é menor que valor1 ($valor1) ✔"
fi

# -le (less or equal): verifica se valor2 é menor ou igual a valor1
if [ "$valor2" -le "$valor1" ]; then
  echo "-le:  valor2 ($valor2) é menor ou igual a valor1 ($valor1) ✔"
fi

echo "--------------------------------------------------"
echo "Operadores com parênteses duplos (( )):"
echo "--------------------------------------------------"

# =============================================================================
# Operadores com parênteses duplos (( ))
# Sintaxe exclusiva do bash — permite operadores aritméticos tradicionais
# Vantagem: mais legível para quem vem de outras linguagens de programação
# =============================================================================

# < (less than): verifica se valor3 é menor que valor1
if (( "$valor3" < "$valor1" )); then
  echo "<:    valor3 ($valor3) é menor que valor1 ($valor1) ✔"
fi

# <= (less or equal): verifica se valor2 é menor ou igual a valor1
if (( "$valor2" <= "$valor1" )); then
  echo "<=:   valor2 ($valor2) é menor ou igual a valor1 ($valor1) ✔"
fi

# > (greater than): verifica se valor1 é maior que valor3
if (( "$valor1" > "$valor3" )); then
  echo ">:    valor1 ($valor1) é maior que valor3 ($valor3) ✔"
fi

# >= (greater or equal): verifica se valor1 é maior ou igual a valor2
if (( "$valor1" >= "$valor2" )); then
  echo ">=:   valor1 ($valor1) é maior ou igual a valor2 ($valor2) ✔"
fi

echo "=================================================="