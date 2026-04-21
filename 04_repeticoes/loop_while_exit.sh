#!/bin/bash
# =============================================================================
# Script:      loop_while_exit.sh
# Descrição:   Demonstra o uso de códigos de saída (exit codes) no bash.
#              Tenta criar um arquivo e verifica o código
#              de retorno ($?) para determinar se a operação foi bem-sucedida.
#              Encerra o script com código 0 (sucesso) ou 1 (falha).
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./loop_while_exit.sh
# =============================================================================

# Muda automaticamente para o diretório onde o script está localizado
# dirname "$0" retorna o caminho do diretório do próprio script
# Garante que os caminhos relativos funcionem independente de onde o script for chamado
cd "$(dirname "$0")"

# Verifica se o arquivo texto.txt existe no diretório atual
# Caso não exista, cria o arquivo com o conteúdo padrão "Hello World!"
if [ ! -f texto.txt ]; then
  echo "Hello World!" > texto.txt
  echo "Arquivo texto.txt criado com conteúdo padrão."
fi

# $? armazena o código de saída do último comando executado
# Valor 0 indica sucesso; qualquer outro valor indica falha
if [ $? -eq 0 ]; then
    echo "Arquivo criado com sucesso"

    # Encerra o script com código 0 — convenção para execução bem-sucedida
    exit 0
else
    echo "Erro ao criar o arquivo"

    # Encerra o script com código 1 — convenção para erro na execução
    exit 1
fi