-- Criação do banco de dados
CREATE DATABASE BibliotecaDB;
USE BibliotecaDB;

-- Criação da tabela Livros
CREATE TABLE Livros (
    livro_id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    genero VARCHAR(50),
    ano_publicacao INT
);

-- Inserção de dados na tabela Livros
INSERT INTO Livros (livro_id, titulo, autor, genero, ano_publicacao)
VALUES
(1, 'Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
(2, 'O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937),
(3, '1984', 'George Orwell', 'Distopia', 1949),
(4, 'A Revolução dos Bichos', 'George Orwell', 'Fábula', 1945),
(5, 'O Alquimista', 'Paulo Coelho', 'Ficção', 1988);

-- Criação da tabela Leitores
CREATE TABLE Leitores (
    leitor_id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(50)
);

-- Inserção de dados na tabela Leitores
INSERT INTO Leitores (leitor_id, nome, idade, cidade)
VALUES
(1, 'Alice', 25, 'São Paulo'),
(2, 'Bruno', 30, 'Rio de Janeiro'),
(3, 'Carlos', 35, 'Belo Horizonte'),
(4, 'Diana', 28, 'Curitiba'),
(5, 'Ester', 22, 'Porto Alegre');

-- Criação da tabela Empréstimos
CREATE TABLE Emprestimos (
    emprestimo_id INT PRIMARY KEY,
    leitor_id INT,
    livro_id INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (leitor_id) REFERENCES Leitores(leitor_id),
    FOREIGN KEY (livro_id) REFERENCES Livros(livro_id)
);

-- Inserção de dados na tabela Empréstimos
INSERT INTO Emprestimos (emprestimo_id, leitor_id, livro_id, data_emprestimo, data_devolucao)
VALUES
(1, 1, 1, '2025-01-01', '2025-01-15'),
(2, 2, 3, '2025-01-02', '2025-01-12'),
(3, 3, 4, '2025-01-05', NULL),
(4, 4, 2, '2025-01-08', '2025-01-18'),
(5, 5, 5, '2025-01-10', NULL);
