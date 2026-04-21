#!/bin/bash
# =============================================================================
# Script:      variaveis.sh
# Descrição:   Exibe informações do ambiente e do usuário atual,
#              incluindo variáveis de sistema e a data/hora corrente.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./variaveis.sh
# =============================================================================

# Define a variável nome
# Utiliza aspas duplas para preservar espaços e caracteres especiais.
nome="Rafael Queiróz"

# Exibe o nome definido manualmente acima
echo $nome

# Exibe o nome do usuário logado no sistema (variável de ambiente do SO)
echo $USER

# Exibe o caminho do diretório home do usuário atual (ex: /home/rafael)
echo $HOME

# Exibe o shell padrão configurado para o usuário (ex: /bin/bash)
echo $SHELL

# Exibe os diretórios onde o sistema busca por executáveis
echo $PATH

# Exibe a data e hora atuais usando substituição de comando com backticks.
# O comando `date` é executado e sua saída é inserida na string.
echo "Hoje é dia: `date`"