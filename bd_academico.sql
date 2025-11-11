-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS ifac;
USE ifac;

-- Tabela alunos
CREATE TABLE IF NOT EXISTS alunos (
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
CREATE TABLE IF NOT EXISTS professores (
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
CREATE TABLE IF NOT EXISTS disciplinas (
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
CREATE TABLE IF NOT EXISTS notas (
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


-- Inserções adicionais de alunos
INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Ana Paula', 'anapaula@ifac.edu.br', '2004-06-10'),
('Ana Clara', 'anaclara@ifac.edu.br', '2006-04-02'),
('Ana Júlia', 'anajulia@ifac.edu.br', '2005-02-22'),
('Carlos Eduardo', 'cadu@ifac.edu.br', '2003-11-11'),
('Bruna Souza', 'brunasouza@ifac.edu.br', '2004-12-15'),
('João Silva', 'joaosilva@ifac.edu.br', '2005-09-09'),
('Joana Santos', 'joana@ifac.edu.br', '2006-01-25'),
('André Souza', 'andresouza@ifac.edu.br', '2004-10-01'),
('Ana Beatriz', 'anabeatriz@ifac.edu.br', '2005-07-07'),
('Beatriz Souza', 'beatriz@ifac.edu.br', '2005-03-30'),
('Anthony Guilherme', 'anthony@ifac.edu.br', '2009-04-25'),
('Paulo Sócrates', 'socrates@ifac.edu.br', '2009-03-31'),
('Alan Turing', 'alanturing@ifac.edu.br', '1912-06-23'),
('Linus Torvalds', 'torvalds@ifac.edu.br', '1969-12-28'),
('Steve Wozniak', 'wozniak@ifac.edu.br', '1950-08-11');

-- Inserções adicionais de professores
INSERT INTO professores (nome, email, titulacao) VALUES
('Thiago Fonseca', 'thiago@ifac.edu.br', 'Especialista'),
('Lívia Martins', 'livia@ifac.edu.br', 'Mestre'),
('Bruno Andrade', 'brunoandrade@ifac.edu.br', 'Doutor');

-- Inserções adicionais de disciplinas
INSERT INTO disciplinas (nome, carga_horaria, id_professor) VALUES
('Sociologia', 30, 11),
('Filosofia', 30, 12),
('Robótica', 60, 13);

-- Inserções adicionais de notas
INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES
(11, 1, 8.0),
(12, 2, 7.4),
(13, 3, 9.0),
(14, 4, 6.5),
(15, 5, 7.9),
(16, 6, 5.8),
(17, 7, 8.7),
(18, 8, 6.2),
(19, 9, 9.3),
(20, 10, 7.5);
