#!/bin/bash
# =============================================================================
# Script:      variaveis_formatadas.sh
# Descrição:   Exibe informações do ambiente e do usuário atual,
#              incluindo variáveis de sistema e a data/hora corrente.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./variaveis_formatadas.sh
# =============================================================================

# Exibe os diretórios onde o sistema busca por executáveis
# um caminho em cada linha
echo $PATH | tr ':' '\n'

# Pula uma linha antes de exibir as informações de data
echo ""

# Exibe a data por extenso em português (ex: terça-feira, 21 de abril de 2026)
# LC_TIME=pt_BR.UTF-8 define o locale apenas para este comando
echo "Hoje é dia: `LC_TIME=pt_BR.UTF-8 date '+%A, %d de %B de %Y'`"

# Pula uma linha antes de exibir a data no formato numérico
echo ""

# Exibe a data no formato numérico dd/mm/yyyy (ex: 21/04/2026)
echo "Data: `date '+%d/%m/%Y'`"

# Pula uma linha antes de exibir a hora
echo ""

# Exibe a hora atual no formato hh:mm:ss (ex: 21:04:20)
echo "Hora: `date '+%H:%M:%S'`"