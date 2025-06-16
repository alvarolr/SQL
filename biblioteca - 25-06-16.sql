-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Tabela livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ano_publicacao INT
);

-- Tabela alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    curso VARCHAR(50)
);

-- Tabela emprestimos
CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT,
    id_aluno INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id)
);

-- Inserção de dados nos livros
INSERT INTO livros (titulo, autor, ano_publicacao) VALUES
    ('Dom Casmurro', 'Machado de Assis', 1899),
    ('Memórias Póstumas', 'Machado de Assis', 1881),
    ('O Alienista', 'Machado de Assis', 1882);

-- Inserção de dados nos alunos
INSERT INTO alunos (nome, curso) VALUES
    ('Ana Lima', 'Informática'),
    ('Carlos Souza', 'Redes'),
    ('Fernanda Dias', 'Informática');

-- Inserção de dados nos empréstimos
INSERT INTO emprestimos (id_livro, id_aluno, data_emprestimo, data_devolucao) VALUES
    (1, 1, '2023-08-01', '2023-08-15'),
    (2, 2, '2023-08-02', NULL),
    (3, 3, '2023-08-03', '2023-08-17');
