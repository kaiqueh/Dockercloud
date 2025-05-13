#!/bin/bash

# Script para inicializar o banco de dados PostgreSQL

# Variáveis de configuração
DB_NAME="seu_nome_do_banco"
DB_USER="seu_usuario"
DB_PASSWORD="sua_senha"

# Criar o banco de dados
echo "Criando o banco de dados..."
psql -U $DB_USER -c "CREATE DATABASE $DB_NAME;"

# Executar migrações
echo "Executando migrações..."
psql -U $DB_USER -d $DB_NAME -f ../src/migrations/001_initial_schema.sql
psql -U $DB_USER -d $DB_NAME -f ../src/migrations/002_seed_data.sql

echo "Banco de dados inicializado com sucesso!"