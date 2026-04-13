-- =========================
-- CRIAÇÃO DO BANCO
-- =========================
CREATE DATABASE treino_condicionais;
USE treino_condicionais;

-- =========================
-- TABELAS
-- =========================

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    idade INT,
    telefone VARCHAR(20),
    cidade VARCHAR(100),
    renda_familiar DECIMAL(10,2),
    bolsa DECIMAL(10,2),
    status_aluno VARCHAR(20)
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT,
    turno VARCHAR(20),
    valor_mensalidade DECIMAL(10,2)
);

CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    nota_final DECIMAL(4,2),
    faltas INT,
    situacao VARCHAR(20),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- =========================
-- INSERÇÃO DE ALUNOS
-- =========================

INSERT INTO alunos VALUES
(1, 'Ana Souza', 'F', 17, '68999990001', 'Rio Branco', 2500.00, 300.00, 'Ativo'),
(2, 'Bruno Lima', 'M', 18, NULL, 'Sena Madureira', 1800.00, NULL, 'Ativo'),
(3, 'Carla Mendes', 'F', 16, '68999990003', 'Cruzeiro do Sul', NULL, 500.00, 'Inativo'),
(4, 'Daniel Rocha', 'M', 19, NULL, 'Rio Branco', 3200.00, NULL, 'Ativo'),
(5, 'Eduarda Silva', 'F', 17, '68999990005', NULL, 1500.00, 700.00, 'Ativo'),
(6, 'Felipe Costa', 'M', 20, '68999990006', 'Tarauacá', 4000.00, NULL, 'Inativo'),
(7, 'Gabriela Alves', 'F', 18, NULL, 'Brasileia', 2100.00, 250.00, 'Ativo'),
(8, 'Henrique Martins', 'M', 17, '68999990008', 'Xapuri', NULL, NULL, 'Ativo'),
(9, 'Isabela Rocha', 'F', 16, NULL, 'Rio Branco', 1200.00, 600.00, 'Ativo'),
(10, 'João Pedro', 'M', 19, '68999990010', NULL, 5000.00, NULL, 'Ativo'),
(11, 'Karina Lopes', 'F', 18, NULL, 'Sena Madureira', NULL, NULL, 'Inativo'),
(12, 'Lucas Andrade', 'M', 17, '68999990012', 'Rio Branco', 2800.00, 200.00, 'Ativo'),
(13, 'Mariana Costa', 'F', 16, NULL, 'Tarauacá', 1300.00, 800.00, 'Ativo'),
(14, 'Nicolas Souza', 'M', 18, '68999990014', 'Cruzeiro do Sul', 2200.00, NULL, 'Ativo'),
(15, 'Olivia Martins', 'F', 17, NULL, NULL, NULL, NULL, 'Ativo');

-- =========================
-- INSERÇÃO DE CURSOS
-- =========================

INSERT INTO cursos VALUES
(1, 'Informática Básica', 40, 'Manhã', 250.00),
(2, 'Banco de Dados', 60, 'Tarde', 300.00),
(3, 'Programação Web', 80, 'Noite', 450.00),
(4, 'Excel Avançado', 30, 'Manhã', 200.00),
(5, 'Redes de Computadores', 70, 'Noite', 400.00),
(6, 'Segurança da Informação', 60, 'Tarde', 350.00);

-- =========================
-- INSERÇÃO DE MATRÍCULAS
-- =========================

INSERT INTO matriculas VALUES
(1, 1, 2, '2026-02-10', 8.5, 5, 'Aprovado'),
(2, 2, 2, '2026-02-10', 6.0, 12, 'Recuperação'),
(3, 3, 1, '2026-02-11', NULL, 0, 'Cursando'),
(4, 4, 3, '2026-02-12', 4.5, 20, 'Reprovado'),
(5, 5, 4, '2026-02-13', 9.8, 2, 'Aprovado'),
(6, 6, 1, '2026-02-14', 7.0, NULL, 'Aprovado'),
(7, 7, 3, '2026-02-15', NULL, 8, 'Cursando'),
(8, 8, 4, '2026-02-16', 5.5, 15, 'Recuperação'),
(9, 9, 5, '2026-02-17', 3.0, 25, 'Reprovado'),
(10, 10, 6, '2026-02-18', 8.0, 4, 'Aprovado'),
(11, 11, 2, '2026-02-19', NULL, NULL, 'Cursando'),
(12, 12, 1, '2026-02-20', 6.5, 10, 'Recuperação'),
(13, 13, 3, '2026-02-21', 9.0, 1, 'Aprovado'),
(14, 14, 4, '2026-02-22', 7.2, NULL, 'Aprovado'),
(15, 15, 5, '2026-02-23', NULL, NULL, 'Cursando'),
(16, 1, 3, '2026-03-01', 5.0, 18, 'Recuperação'),
(17, 2, 4, '2026-03-02', 2.5, 30, 'Reprovado'),
(18, 3, 6, '2026-03-03', 7.5, 6, 'Aprovado'),
(19, 4, 5, '2026-03-04', NULL, 9, 'Cursando'),
(20, 5, 2, '2026-03-05', 10.0, 0, 'Aprovado');
