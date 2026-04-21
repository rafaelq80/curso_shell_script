#!/bin/bash
# ==============================================================================
# NOME:         cria_arquivos.sh
# DESCRIÇÃO:    Cria 25 arquivos vazios com numeração crescente no padrão
#               <nome><número> (ex: rafael1, rafael2, ..., rafael25).
#               Cada execução detecta o maior número existente e continua
#               a partir dele, sem sobrescrever arquivos anteriores.
# AUTOR:        —
# VERSÃO:       1.0.0
# DATA:         2025-04-20
# USO:          ./cria_arquivos.sh
# DEPENDÊNCIAS: bash, ls, grep, sort, seq, touch, mkdir
# SAÍDA:        ~/shell/lab_253/arquivos/rafael<N> ... rafael<N+24>
# ==============================================================================

# ------------------------------------------------------------------------------
# CONFIGURAÇÃO
# ------------------------------------------------------------------------------

# Prefixo usado no nome de todos os arquivos criados
NOME="rafael"

# Diretório de destino onde os arquivos serão criados
PASTA="$HOME/shell/lab_253/arquivos"

# Quantidade de arquivos a criar por execução
QUANTIDADE=25

# ------------------------------------------------------------------------------
# PREPARAÇÃO DO DIRETÓRIO
# ------------------------------------------------------------------------------

# Cria o diretório de destino (e todos os intermediários) caso não exista
# A flag -p suprime erros se o diretório já existir
mkdir -p "$PASTA"

# ------------------------------------------------------------------------------
# DETECÇÃO DO ÚLTIMO NÚMERO EXISTENTE
# ------------------------------------------------------------------------------
# Objetivo: encontrar o maior sufixo numérico já usado para não sobrescrever
# arquivos de execuções anteriores.
#
# Pipeline:
#   ls "$PASTA"               → lista todos os arquivos do diretório
#   2>/dev/null               → suprime erro caso o diretório esteja vazio
#   grep -E "^${NOME}[0-9]+$" → filtra apenas arquivos no padrão exato <nome><número>
#                               ^ e $ garantem que não há outros caracteres
#   grep -oE "[0-9]+"         → extrai somente a parte numérica de cada nome
#   sort -n                   → ordena numericamente (não lexicográfico)
#   tail -1                   → pega apenas o maior valor (último após ordenação)
#
# Resultado: número inteiro (ex: "25") ou string vazia se nenhum arquivo existir
# ------------------------------------------------------------------------------
ULTIMO=$(ls "$PASTA" 2>/dev/null | grep -E "^${NOME}[0-9]+$" | grep -oE "[0-9]+" | sort -n | tail -1)

# ------------------------------------------------------------------------------
# DETERMINAÇÃO DO PONTO DE PARTIDA
# ------------------------------------------------------------------------------

# Se $ULTIMO estiver vazio (nenhum arquivo encontrado), começa do 1
# Caso contrário, incrementa o último número encontrado
if [ -z "$ULTIMO" ]; then
  PROXIMO=1
else
  PROXIMO=$(( ULTIMO + 1 ))
fi

# ------------------------------------------------------------------------------
# CRIAÇÃO DOS ARQUIVOS
# ------------------------------------------------------------------------------
# seq <início> <fim>  → gera a sequência de números do intervalo (inclusivo)
# touch               → cria arquivo vazio ou atualiza timestamp se já existir
#
# Intervalo calculado: PROXIMO até PROXIMO + QUANTIDADE - 1
# Exemplo (1ª execução): seq 1 25  → rafael1 ... rafael25
# Exemplo (2ª execução): seq 26 50 → rafael26 ... rafael50
# ------------------------------------------------------------------------------
for i in $(seq $PROXIMO $(( PROXIMO + QUANTIDADE - 1 ))); do
  touch "$PASTA/${NOME}${i}"
done

# ------------------------------------------------------------------------------
# CONFIRMAÇÃO
# ------------------------------------------------------------------------------
echo "$QUANTIDADE arquivos criados em $PASTA"
echo "De: ${NOME}${PROXIMO} até ${NOME}$(( PROXIMO + QUANTIDADE - 1 ))"