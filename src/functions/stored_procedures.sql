-- Este arquivo contém a definição de procedimentos armazenados que podem ser utilizados para encapsular lógica de negócios e operações complexas no banco de dados.

-- Exemplo de procedimento armazenado para inserir um novo registro
CREATE OR REPLACE FUNCTION insert_new_record(data_value TEXT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO your_table_name (column_name) VALUES (data_value);
END;
$$ LANGUAGE plpgsql;

-- Exemplo de procedimento armazenado para atualizar um registro existente
CREATE OR REPLACE FUNCTION update_record(record_id INT, new_value TEXT)
RETURNS VOID AS $$
BEGIN
    UPDATE your_table_name SET column_name = new_value WHERE id = record_id;
END;
$$ LANGUAGE plpgsql;

-- Exemplo de procedimento armazenado para deletar um registro
CREATE OR REPLACE FUNCTION delete_record(record_id INT)
RETURNS VOID AS $$
BEGIN
    DELETE FROM your_table_name WHERE id = record_id;
END;
$$ LANGUAGE plpgsql;