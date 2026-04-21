#!/bin/bash
# ==============================================================================
# NOME:         setup_companyA.sh
# DESCRIÇÃO:    Cria a estrutura de diretórios e arquivos base da CompanyA.
#               Organiza os dados em departamentos (Management, Employees,
#               Finance, HR, IA, SharedFolders), cada um com seus arquivos
#               CSV iniciais prontos para uso.
# AUTOR:        —
# VERSÃO:       1.0.0
# DATA:         2025-04-20
# USO:          ./setup_companyA.sh
# DEPENDÊNCIAS: bash, mkdir, touch, find, sort
# SAÍDA:        ~/shell/lab_251/CompanyA/  (ver estrutura ao final do script)
# ==============================================================================

# ------------------------------------------------------------------------------
# DIRETÓRIO BASE
# ------------------------------------------------------------------------------

# Garante que o diretório raiz da empresa existe antes de qualquer operação
# A flag -p cria toda a árvore intermediária e suprime erros se já existir
mkdir -p "$HOME/shell/lab_251/CompanyA"

# Atalho para o caminho base — evita repetição e facilita futuras alterações
BASE="$HOME/shell/lab_251/CompanyA"

# ------------------------------------------------------------------------------
# CRIAÇÃO DOS DEPARTAMENTOS
# ------------------------------------------------------------------------------
# Cada subdiretório representa um departamento da empresa.
# A flag -p é mantida para idempotência: re-executar o script não gera erros
# caso os diretórios já existam.
#
# Estrutura de departamentos:
#   Management/    → gestão e organização interna
#   Employees/     → dados operacionais dos funcionários
#   Finance/       → informações financeiras e de remuneração
#   HR/            → recursos humanos (gestores e avaliações)
#   IA/            → projetos e dados de inteligência artificial
#   SharedFolders/ → arquivos de acesso compartilhado entre departamentos
# ------------------------------------------------------------------------------
mkdir -p "$BASE/Management"
mkdir -p "$BASE/Employees"
mkdir -p "$BASE/Finance"
mkdir -p "$BASE/HR"
mkdir -p "$BASE/IA"
mkdir -p "$BASE/SharedFolders"

# ------------------------------------------------------------------------------
# CRIAÇÃO DOS ARQUIVOS CSV
# ------------------------------------------------------------------------------
# O comando touch cria arquivos vazios caso não existam.
# Se o arquivo já existir, apenas atualiza o timestamp — sem sobrescrever dados.
#
# Arquivos criados por departamento:
#   Management/
#     Sections.csv    → seções e divisões internas da empresa
#     Promotions.csv  → histórico e elegibilidade de promoções
#   Employees/
#     Schedules.csv   → escalas e horários de trabalho
#   Finance/
#     Salary.csv      → salários mensais dos funcionários
#     Hourly.csv      → remuneração por hora (contratos flexíveis)
#   HR/
#     Managers.csv    → lista e dados dos gestores por área
#     Assessments.csv → avaliações de desempenho dos colaboradores
# ------------------------------------------------------------------------------
touch "$BASE/Management/Sections.csv"
touch "$BASE/Management/Promotions.csv"
touch "$BASE/Employees/Schedules.csv"
touch "$BASE/Finance/Salary.csv"
touch "$BASE/Finance/Hourly.csv"
touch "$BASE/HR/Managers.csv"
touch "$BASE/HR/Assessments.csv"

# ------------------------------------------------------------------------------
# CONFIRMAÇÃO
# ------------------------------------------------------------------------------
# find "$BASE" | sort  → lista todos os arquivos e diretórios criados,
#                        ordenados alfabeticamente, para inspeção visual
# ------------------------------------------------------------------------------
echo "Estrutura criada com sucesso em $BASE"
echo ""
echo "Estrutura gerada:"
find "$BASE" | sort