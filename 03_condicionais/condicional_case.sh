#!/bin/bash
# =============================================================================
# Script:      condicional_case.sh
# Descrição:   Demonstra o uso da estrutura case para identificar
#              o dia da semana informado pelo usuário.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./condicional_case.sh
# =============================================================================

# Solicita o dia da semana ao usuário
read -p "Digite o dia da semana: " dia

# Converte a entrada para minúsculas, evitando problemas com maiúsculas/minúsculas
# Ex: "Segunda", "SEGUNDA" e "segunda" serão tratados da mesma forma
dia=$(echo "$dia" | tr '[:upper:]' '[:lower:]')

# Avalia o valor da variável dia e executa o bloco correspondente
# Cada opção termina com ;; (equivalente ao break de outras linguagens)
# O padrão * ao final captura qualquer valor não listado (equivalente ao default)
case "$dia" in
  "segunda")
    echo "Início da semana, bora trabalhar! 💪"
    ;;
  "terça")
    echo "Ainda no começo, foco total! 🎯"
    ;;
  "quarta")
    echo "Metade da semana, já deu pra descansar! 😄"
    ;;
  "quinta")
    echo "Quase lá, só mais um dia! 🏁"
    ;;
  "sexta")
    echo "Sextou! 🎉"
    ;;
  "sábado" | "domingo")
    echo "Final de semana, hora de descansar! 😎"
    ;;
  *)
    echo "Dia inválido! Digite um dia da semana válido."
    ;;
esac