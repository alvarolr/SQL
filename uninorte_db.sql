-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS uninorte;
USE uninorte;

-- Tabela alunos
CREATE TABLE IF NOT EXISTS alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE
);

INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Ana Souza', 'ana@uninorte.edu.br', '2005-03-12'),
('Bruno Lima', 'bruno@uninorte.edu.br', '2004-07-23'),
('Carlos Mendes', 'carlos@uninorte.edu.br', '2003-11-30'),
('Daniela Rocha', 'daniela@uninorte.edu.br', '2005-05-14'),
('Eduardo Silva', 'eduardo@uninorte.edu.br', '2006-01-10'),
('Fernanda Castro', 'fernanda@uninorte.edu.br', '2005-12-03'),
('Gabriel Costa', 'gabriel@uninorte.edu.br', '2004-08-09'),
('Helena Dias', 'helena@uninorte.edu.br', '2003-10-17'),
('Igor Martins', 'igor@uninorte.edu.br', '2006-02-25'),
('Juliana Freitas', 'juliana@uninorte.edu.br', '2005-09-01'),
('Ana Paula', 'anapaula@uninorte.edu.br', '2004-06-10'),
('Ana Clara', 'anaclara@uninorte.edu.br', '2006-04-02'),
('Ana Júlia', 'anajulia@uninorte.edu.br', '2005-02-22'),
('Carlos Eduardo', 'cadu@uninorte.edu.br', '2003-11-11'),
('Bruna Souza', 'brunasouza@uninorte.edu.br', '2004-12-15'),
('João Silva', 'joaosilva@uninorte.edu.br', '2005-09-09'),
('Joana Santos', 'joana@uninorte.edu.br', '2006-01-25'),
('André Souza', 'andresouza@uninorte.edu.br', '2004-10-01'),
('Ana Beatriz', 'anabeatriz@uninorte.edu.br', '2005-07-07'),
('Beatriz Souza', 'beatriz@uninorte.edu.br', '2005-03-30'),
('Anthony Guilherme', 'anthony@uninorte.edu.br', '2009-04-25'),
('Paulo Sócrates', 'socrates@uninorte.edu.br', '2009-03-31'),
('Alan Turing', 'alanturing@uninorte.edu.br', '1912-06-23'),
('Linus Torvalds', 'torvalds@uninorte.edu.br', '1969-12-28'),
('Steve Wozniak', 'wozniak@uninorte.edu.br', '1950-08-11'),
('Caio Marcos', 'caiomarcos@uninorte.edu.br', '2009-07-06'),
('Mário Luis', 'marioluis@uninorte.edu.br', '2009-09-21'), 
('Markus Augusto', 'markusaugusto@gmail.com', '2010-01-13'),
('Pedro Henrique', 'pedrohenrique@gmail.com', '2010-01-09'),
('Kaio Asaf', 'kaioasaf@gmail.com', '2010-04-30');


-- Tabela professores
CREATE TABLE IF NOT EXISTS professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    titulacao VARCHAR(50)
);

INSERT INTO professores (nome, email, titulacao) VALUES
('Maria Almeida', 'maria@uninorte.edu.br', 'Mestre'),
('João Pedro', 'joao@uninorte.edu.br', 'Doutor'),
('Claudia Torres', 'claudia@uninorte.edu.br', 'Especialista'),
('Rodrigo Santos', 'rodrigo@uninorte.edu.br', 'Doutor'),
('Luciana Costa', 'luciana@uninorte.edu.br', 'Mestre'),
('Paulo Henrique', 'paulo@uninorte.edu.br', 'Mestre'),
('Renata Lima', 'renata@uninorte.edu.br', 'Doutor'),
('Sérgio Oliveira', 'sergio@uninorte.edu.br', 'Especialista'),
('Aline Matos', 'aline@uninorte.edu.br', 'Mestre'),
('Fábio Rezende', 'fabio@uninorte.edu.br', 'Doutor'),
('Thiago Fonseca', 'thiago@uninorte.edu.br', 'Especialista'),
('Lívia Martins', 'livia@uninorte.edu.br', 'Mestre'),
('Bruno Andrade', 'brunoandrade@uninorte.edu.br', 'Doutor'),
('Álvaro Rios', 'alvaro.rios@uninorte.edu.br', 'Especialista');

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
('Artes', 30, 10),
('Sociologia', 30, 11),
('Filosofia', 30, 12),
('Robótica', 60, 13),
('Banco de Dados', 90, 14);

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
(10, 10, 7.8),
(11, 1, 8.0),
(12, 2, 7.4),
(13, 3, 9.0),
(14, 4, 6.5),
(15, 5, 7.9),
(16, 6, 5.8),
(17, 7, 8.7),
(18, 8, 6.2),
(19, 9, 9.3),
(20, 10, 7.5),
(26, 14, 10.0),
(27, 14, 9.5)
