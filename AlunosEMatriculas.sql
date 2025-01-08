-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS Escola;

-- Selecionar o banco
USE Escola;

-- Tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);

-- Tabela de matrículas
CREATE TABLE IF NOT EXISTS matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    curso VARCHAR(100) NOT NULL,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- Inserir dados na tabela alunos
INSERT INTO alunos (nome, email, telefone) VALUES
('Beatriz Nunes', 'beatriz.nunes@example.com', '11933333333'),
('Lucas Mendes', 'lucas.mendes@example.com', '11955555555'),
('Fernanda Lima', 'fernanda.lima@example.com', NULL),
('Juliana Souza', 'juliana.souza@example.com', '11922222222');

-- Inserir dados na tabela matriculas
INSERT INTO matriculas (aluno_id, curso, data_matricula) VALUES
(1, 'Matemática', '2024-01-10'),
(2, 'História', '2024-02-15'),
(2, 'Geografia', '2024-03-01'),
(3, 'Ciências', '2024-04-05');
