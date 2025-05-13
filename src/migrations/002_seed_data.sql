-- Populando tabela de clientes com 1000 registros
INSERT INTO clientes (nome, email, senha)
SELECT 
    CASE floor(random() * 5)::int
        WHEN 0 THEN 'Maria ' 
        WHEN 1 THEN 'João '
        WHEN 2 THEN 'Ana '
        WHEN 3 THEN 'Carlos '
        ELSE 'Juliana '
    END || 
    CASE floor(random() * 5)::int
        WHEN 0 THEN 'Silva'
        WHEN 1 THEN 'Oliveira'
        WHEN 2 THEN 'Santos'
        WHEN 3 THEN 'Souza'
        ELSE 'Pereira'
    END || ' ' || i,
    
    'cliente' || i || '@' || (
        CASE floor(random() * 4)::int
            WHEN 0 THEN 'gmail.com'
            WHEN 1 THEN 'outlook.com'
            WHEN 2 THEN 'yahoo.com'
            ELSE 'hotmail.com'
        END
    ),
    
    MD5('senha' || i)
FROM generate_series(1, 1000) AS i;

-- Populando tabela de motoristas com 1000 registros
INSERT INTO motoristas (nome, numero_registro, telefone)
SELECT 
    CASE floor(random() * 5)::int
        WHEN 0 THEN 'Roberto '
        WHEN 1 THEN 'Lucas '
        WHEN 2 THEN 'Fernando '
        WHEN 3 THEN 'Gabriela '
        ELSE 'Daniel '
    END || 
    CASE floor(random() * 5)::int
        WHEN 0 THEN 'Almeida'
        WHEN 1 THEN 'Ferreira'
        WHEN 2 THEN 'Costa'q
        WHEN 3 THEN 'Rodrigues'
        ELSE 'Lima'
    END || ' ' || i,
    
    'MOT-' || LPAD(i::text, 6, '0'),
    
    CASE floor(random() * 3)::int
        WHEN 0 THEN '(11) '
        WHEN 1 THEN '(21) '
        ELSE '(31) '
    END || '9' || 
    LPAD(floor(random() * 10000000)::text, 8, '0')
    
FROM generate_series(1, 1000) AS i;