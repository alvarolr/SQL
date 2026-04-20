CREATE DATABASE aula_python_bd;
USE aula_python_bd;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL,
    idade INT
);

INSERT INTO alunos (nome, curso, idade) VALUES
('Ana Souza', 'Informática', 17),
('Carlos Lima', 'Administração', 18),
('Mariana Alves', 'Redes de Computadores', 16),
('João Pedro', 'Informática', 19);
