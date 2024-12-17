-- database/init.sql
CREATE TABLE IF NOT EXISTS colaboradores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    departamento VARCHAR(100)
);

INSERT INTO colaboradores (nome, email, departamento) 
VALUES 
    ('João Silva', 'joao@empresa.com', 'DTI'),
    ('Maria Souza', 'maria@empresa.com', 'DTI');