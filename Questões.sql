--Questão1
CREATE DATABASE IF NOT EXISTS ifac_prova;
USE ifac_prova;

CREATE TABLE IF NOT EXISTS alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    email VARCHAR(100),
    nota DECIMAL(4,2),
    matriculado BOOLEAN
);

--Questão 2 a
INSERT INTO alunos (nome, data_nascimento, email, nota, matriculado)
VALUES 
('Ana Silva', '2005-04-10', 'ana.silva@gmail.com', 8.5, TRUE),
('João Souza', '2004-10-22', 'joao.souza@gmail.com', 6.7, FALSE),
('Maria Lima', '2005-12-01', 'maria.lima@gmail.com', 9.2, TRUE);

--Questão 2 b
UPDATE alunos
SET nota = 9.0
WHERE id = 1;

--Questão 2 c
DELETE FROM alunos
WHERE id = 2;

--QUestão 3 a
SELECT * FROM alunos
WHERE nota > 7;


--QUestão 3 b
SELECT nome, nota FROM alunos
WHERE matriculado = TRUE;

--QUestão 3 c
SELECT * FROM alunos
WHERE matriculado = FALSE;

--QUestão 4
SELECT * FROM produtos;

--QUestão 5
SELECT nome, preco FROM produtos
WHERE preco > 500;

--QUestão 6
SELECT * FROM produtos
WHERE disponivel = TRUE AND estoque > 10;

--QUestão 7
SELECT * FROM produtos
WHERE disponivel = FALSE OR estoque = 0;
