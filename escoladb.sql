-- Criação do banco de dados
CREATE DATABASE EscolaDB;
USE EscolaDB;

-- Criação da tabela Alunos
CREATE TABLE Alunos (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(50)
);

-- Inserção de dados na tabela Alunos
INSERT INTO Alunos (aluno_id, nome, idade, cidade)
VALUES
(1, 'Alice', 20, 'São Paulo'),
(2, 'Bruno', 22, 'Rio de Janeiro'),
(3, 'Carlos', 23, 'São Paulo'),
(4, 'Diana', 21, 'Curitiba'),
(5, 'Ester', 22, 'Rio de Janeiro');

-- Criação da tabela Cursos
CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    nome_curso VARCHAR(100),
    carga_horaria INT
);

-- Inserção de dados na tabela Cursos
INSERT INTO Cursos (curso_id, nome_curso, carga_horaria)
VALUES
(101, 'Matemática', 60),
(102, 'Física', 80),
(103, 'Computação', 100);

-- Criação da tabela Inscrições
CREATE TABLE Inscricoes (
    inscricao_id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(curso_id)
);

-- Inserção de dados na tabela Inscrições
INSERT INTO Inscricoes (inscricao_id, aluno_id, curso_id, nota)
VALUES
(1, 1, 101, 85.00),
(2, 1, 102, 90.00),
(3, 2, 103, 70.00),
(4, 3, 101, 88.00),
(5, 4, 102, 75.00),
(6, 5, 103, 95.00),
(7, 5, 102, 95.00);
