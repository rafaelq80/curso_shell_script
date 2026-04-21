#!/bin/bash
# ==============================================================================
# NOME:         backup.sh
# DESCRIÇÃO:    Gera um backup comprimido do diretório CompanyA em formato
#               .tar.gz, nomeado com a data atual. Verifica se o arquivo foi
#               criado com sucesso e encerra com erro caso contrário.
# AUTOR:        —
# VERSÃO:       1.0.0
# DATA:         2025-04-20
# USO:          ./backup.sh
# DEPENDÊNCIAS: bash, tar, mkdir, date
# SAÍDA:        ~/shell/lab_251/backups/YYYY_MM_DD-backup-CompanyA.tar.gz
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIÁVEIS
# ------------------------------------------------------------------------------

# Data atual formatada para uso no nome do arquivo (ex: 2025_04_20)
# Formato YYYY_MM_DD garante ordenação cronológica correta ao listar os backups
DAY="$(date +%Y_%m_%d)"

# Caminho completo do arquivo de backup gerado
# Exemplo: ~/shell/lab_251/backups/2025_04_20-backup-CompanyA.tar.gz
BACKUP="/home/$USER/shell/lab_251/backups/$DAY-backup-CompanyA.tar.gz"

# ------------------------------------------------------------------------------
# PREPARAÇÃO DO DIRETÓRIO
# ------------------------------------------------------------------------------

# Cria o diretório de destino (e todos os intermediários) caso não exista
# A flag -p suprime erros se o diretório já existir
mkdir -p "/home/$USER/shell/lab_251/backups"

# ------------------------------------------------------------------------------
# CRIAÇÃO DO BACKUP
# ------------------------------------------------------------------------------
# Comando: tar -czvpf <destino> <origem>
#
#   -c  → cria um novo arquivo tar (create)
#   -z  → comprime a saída com gzip, gerando o formato .tar.gz
#   -v  → modo verbose: exibe cada arquivo adicionado ao pacote
#   -p  → preserva permissões originais dos arquivos (owner, chmod)
#   -f  → indica que o próximo argumento é o nome do arquivo de saída
#
# Origem:  ~/shell/lab_251/CompanyA  (diretório a ser compactado)
# Destino: $BACKUP                   (caminho definido acima)
# ------------------------------------------------------------------------------
tar -czvpf "$BACKUP" /home/$USER/shell/lab_251/CompanyA

# ------------------------------------------------------------------------------
# VERIFICAÇÃO DO RESULTADO
# ------------------------------------------------------------------------------
# $? captura o código de saída do último comando executado (tar)
#   0  → sucesso
#   >0 → algum erro ocorreu durante a criação do backup
#
# Em caso de falha: exibe mensagem de erro e encerra o script com código 1,
# sinalizando ao sistema (ou a um agendador como cron) que houve falha
# ------------------------------------------------------------------------------
if [ $? -eq 0 ]; then
  echo "Backup criado com sucesso: $BACKUP"
else
  echo "Erro ao criar o backup!"
  exit 1
fi