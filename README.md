# PostgreSQL Project

Este projeto é uma implementação de um banco de dados PostgreSQL, estruturado para facilitar o desenvolvimento e a manutenção. Abaixo estão as instruções sobre como configurar e utilizar o banco de dados, além de informações sobre a estrutura do projeto.

## Estrutura do Projeto

- **src/migrations/**: Contém scripts SQL para criar a estrutura do banco de dados e inserir dados iniciais.
  - `001_initial_schema.sql`: Script para criar tabelas, colunas e relacionamentos.
  - `002_seed_data.sql`: Script para inserir dados iniciais nas tabelas.

- **src/schemas/**: Define o esquema do banco de dados.
  - `schema.sql`: Contém a definição de tabelas, índices e outras estruturas.

- **src/functions/**: Contém definições de procedimentos armazenados.
  - `stored_procedures.sql`: Encapsula lógica de negócios e operações complexas.

- **tests/**: Contém consultas SQL de teste.
  - `test_queries.sql`: Utilizado para verificar a integridade e o funcionamento do banco de dados.

- **scripts/**: Scripts de shell para gerenciamento do banco de dados.
  - `init_db.sh`: Inicializa o banco de dados, executando migrações e inserindo dados.
  - `backup_db.sh`: Faz backup do banco de dados.

- **.env.example**: Exemplo de configuração de variáveis de ambiente para conexão ao banco de dados.

## Instruções de Configuração

1. **Clone o repositório**:
   ```
   git clone <URL do repositório>
   cd postgresql-project
   ```

2. **Configurar variáveis de ambiente**:
   Renomeie o arquivo `.env.example` para `.env` e preencha com suas credenciais de banco de dados.

3. **Inicializar o banco de dados**:
   Execute o script de inicialização:
   ```
   bash scripts/init_db.sh
   ```

4. **Executar testes**:
   Utilize o arquivo `tests/test_queries.sql` para verificar se o banco de dados está funcionando corretamente.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.