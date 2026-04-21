#!/bin/bash
# =============================================================================
# Script:      condicional_if.sh
# Descrição:   Copia o arquivo texto.txt para o diretório ./tmp e exibe
#              uma mensagem de sucesso ou erro conforme o resultado.
#							 Caso o texto ou a pasta não existam, o script cria
#							 ambos automaticamente.
# Autor:       Rafael Queiróz
# Versão:      1.0.0
# Data:        2026-04-21
# Uso:         ./condicional_if.sh
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

# Cria o diretório tmp caso não exista
mkdir -p tmp

# Copia o arquivo texto.txt para ./tmp
cp texto.txt ./tmp

# Verifica o código de saída do último comando executado ($?)
# 0 = sucesso | qualquer outro valor = erro
if [ $? -eq 0 ]; then
  echo "Texto copiado!"
else
  echo "Erro ao copiar o arquivo!"
fi