-- Test queries for verifying database integrity and functionality

-- Example query to check if a specific table exists
SELECT to_regclass('public.your_table_name');

-- Example query to count the number of rows in a specific table
SELECT COUNT(*) FROM your_table_name;

-- Example query to retrieve all records from a specific table
SELECT * FROM your_table_name;

-- Example query to check for a specific record
SELECT * FROM your_table_name WHERE id = 1;

-- Example query to test a join between two tables
SELECT a.*, b.*
FROM table_a a
JOIN table_b b ON a.foreign_key_id = b.id;

-- Example query to test an aggregate function
SELECT AVG(column_name) FROM your_table_name;

-- Example query to test a stored procedure
CALL your_stored_procedure_name(parameters);