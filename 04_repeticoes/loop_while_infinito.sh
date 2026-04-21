#!/bin/bash
# =============================================================================
# Script:      loop_while_infinito.sh
# Descrição:   Demonstra o uso do laço infinito while true combinado com
#              break condicional. O script solicita repetidamente um valor
#              ao usuário até que o número correto (5) seja digitado,
#              encerrando o laço somente quando a condição for satisfeita.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_while_infinito.sh
# =============================================================================

# Laço infinito — executa indefinidamente até que um break seja acionado
while true; do

    # Solicita um valor ao usuário a cada iteração
    echo "Digite um valor:"
    read valor

    # Verifica se o valor digitado é igual a 5
    # -eq: comparador aritmético de igualdade (equal)
    if [ "$valor" -eq 5 ]; then
        # Interrompe o laço infinito ao encontrar o valor correto
        break
    fi

    # Exibido apenas quando o valor digitado é diferente de 5
    echo "Valor incorreto, tente novamente!"

done

# Executado somente após o break — confirma que o valor correto foi digitado
echo "Acertou! O valor é $valor"