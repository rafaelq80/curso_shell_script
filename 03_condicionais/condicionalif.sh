#!/bin/bash

# Copia o arquivo texto.txt para /tmp
# O Terminal deve estar apontando para a pasta raiz
cp texto.txt ./tmp

# Verifica o código de saída do último comando executado ($?)
# 0 = sucesso | qualquer outro valor = erro
if [ $? -eq 0 ]; then
  echo "Texto copiado!"
else
  echo "Erro ao copiar o arquivo!"
fi