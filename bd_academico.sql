
-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS ifac;
USE ifac;

-- Tabela alunos
CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE
);

INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Ana Souza', 'ana@ifac.edu.br', '2005-03-12'),
('Bruno Lima', 'bruno@ifac.edu.br', '2004-07-23'),
('Carlos Mendes', 'carlos@ifac.edu.br', '2003-11-30'),
('Daniela Rocha', 'daniela@ifac.edu.br', '2005-05-14'),
('Eduardo Silva', 'eduardo@ifac.edu.br', '2006-01-10'),
('Fernanda Castro', 'fernanda@ifac.edu.br', '2005-12-03'),
('Gabriel Costa', 'gabriel@ifac.edu.br', '2004-08-09'),
('Helena Dias', 'helena@ifac.edu.br', '2003-10-17'),
('Igor Martins', 'igor@ifac.edu.br', '2006-02-25'),
('Juliana Freitas', 'juliana@ifac.edu.br', '2005-09-01');

-- Tabela professores
CREATE TABLE professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    titulacao VARCHAR(50)
);

INSERT INTO professores (nome, email, titulacao) VALUES
('Maria Almeida', 'maria@ifac.edu.br', 'Mestre'),
('João Pedro', 'joao@ifac.edu.br', 'Doutor'),
('Claudia Torres', 'claudia@ifac.edu.br', 'Especialista'),
('Rodrigo Santos', 'rodrigo@ifac.edu.br', 'Doutor'),
('Luciana Costa', 'luciana@ifac.edu.br', 'Mestre'),
('Paulo Henrique', 'paulo@ifac.edu.br', 'Mestre'),
('Renata Lima', 'renata@ifac.edu.br', 'Doutor'),
('Sérgio Oliveira', 'sergio@ifac.edu.br', 'Especialista'),
('Aline Matos', 'aline@ifac.edu.br', 'Mestre'),
('Fábio Rezende', 'fabio@ifac.edu.br', 'Doutor');

-- Tabela disciplinas
CREATE TABLE disciplinas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id)
);

INSERT INTO disciplinas (nome, carga_horaria, id_professor) VALUES
('Matemática', 60, 1),
('Português', 60, 2),
('História', 40, 3),
('Geografia', 40, 4),
('Biologia', 60, 5),
('Física', 60, 6),
('Química', 60, 7),
('Inglês', 40, 8),
('Educação Física', 30, 9),
('Artes', 30, 10);

-- Tabela notas
CREATE TABLE notas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_disciplina INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES
(1, 1, 8.5),
(2, 2, 7.0),
(3, 3, 6.8),
(4, 4, 9.2),
(5, 5, 5.5),
(6, 6, 8.0),
(7, 7, 7.3),
(8, 8, 6.4),
(9, 9, 9.0),
(10, 10, 7.8);
