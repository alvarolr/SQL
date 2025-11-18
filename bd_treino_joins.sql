
-- Criar banco de dados com segurança
CREATE DATABASE IF NOT EXISTS treino_joins;
USE treino_joins;

-- Tabela CLIENTES
CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela VENDAS
CREATE TABLE IF NOT EXISTS vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    valor DECIMAL(10,2),
    data_venda DATE,
    produto VARCHAR(100),
    status_pagamento VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Tabela PEDIDOS
CREATE TABLE IF NOT EXISTS pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATE,
    tipo_entrega VARCHAR(50),
    endereco_entrega VARCHAR(255),
    observacoes TEXT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- CLIENTES
INSERT INTO clientes (nome, email, cidade, telefone) VALUES
('Ana Souza', 'ana@gmail.com', 'Rio Branco', '6899991001'),
('Bruno Lima', 'bruno@gmail.com', 'Cruzeiro do Sul', '6899991002'),
('Carlos Silva', NULL, 'Sena Madureira', '6899991003'),
('Daniela Costa', 'daniela@gmail.com', NULL, '6899991004'),
('Eduardo Alves', 'eduardo@gmail.com', 'Tarauacá', NULL),
('Fernanda Dias', 'fernanda@gmail.com', 'Feijó', '6899991006'),
('Gustavo Pereira', NULL, 'Rio Branco', '6899991007'),
('Helena Ramos', 'helena@gmail.com', NULL, NULL),
('Igor Santos', 'igor@gmail.com', 'Xapuri', '6899991009'),
('Joana Castro', NULL, 'Plácido de Castro', '6899991010'),
('Paulo Sócrates', 'socrates@gemail.com', 'Envira', '6840028922'),
('Rasmus Lerdorf', 'lerdorf@gemail.com', 'Xapuri', '6845453535'),
('Albert Einstein', 'einstein@gemail.com', 'Quinari', '6869696767'),
('Cristiano Ronaldo', 'ppcris@gemail.com', 'Quinari', '6869696767'),
('Stephen Hawking', 'stephen@gemail.com', 'Rio Branco', '6888775522');

-- VENDAS
INSERT INTO vendas (cliente_id, valor, data_venda, produto, status_pagamento) VALUES
(1, 150.00, '2024-01-15', 'Notebook', 'Pago'),
(2, 200.00, '2024-02-20', 'Celular', 'Pago'),
(3, 300.00, '2024-03-10', 'Tablet', 'Aguardando'),
(5, 500.00, '2024-04-05', 'Monitor', NULL),
(2, 100.00, '2024-05-12', 'Mouse', 'Pago'),
(7, 50.00, '2024-05-01', 'Teclado', 'Cancelado'),
(10, 120.00, '2024-05-02', 'Fone de Ouvido', 'Pago'),
(8, 80.00, NULL, 'Carregador', 'Pago'),
(6, 60.00, '2024-05-13', NULL, 'Pago'),
(4, 90.00, '2024-05-14', 'Mouse Pad', 'Aguardando'),
(11, 270.00, '2024-05-23', 'Mouse', 'Pago'),
(12, 350.00, '2024-05-12', 'Monitor', 'Pago'),
(13, 20.00, '2024-05-13', 'Tablet', 'Cancelado'),
(14, 80.00, '2024-05-05', 'Mouse Pad', 'Pago'),
(15, 120.00, '2024-05-09', 'Teclado', 'Aguardando');

-- PEDIDOS
INSERT INTO pedidos (cliente_id, data_pedido, tipo_entrega, endereco_entrega, observacoes) VALUES
(1, '2024-01-10', 'Entrega Rápida', 'Rua A, 100', 'Entregar após 18h'),
(3, '2024-03-05', 'Padrão', 'Rua B, 200', NULL),
(6, '2024-04-20', 'Entrega Agendada', NULL, 'Cliente estará ausente pela manhã'),
(7, '2024-05-01', 'Entrega Rápida', 'Rua C, 300', NULL),
(9, '2024-05-03', 'Padrão', 'Rua D, 400', 'Evitar horário de pico'),
(2, '2024-05-04', 'Entrega Agendada', 'Rua E, 500', NULL),
(10, '2024-05-05', 'Padrão', 'Rua F, 600', NULL),
(4, '2024-05-06', NULL, 'Rua G, 700', 'Urgente'),
(8, '2024-05-07', 'Entrega Rápida', NULL, 'Portão cinza'),
(11, '2024-05-08', 'Padrão', 'Rua X, 300', NULL),
(12, '2024-04-25', 'Entrega Agendada', 'Rua Y, 200', NULL),
(13, '2024-05-10', 'Entrega Agendada', 'Rua X, 600', NULL),
(14, '2024-03-22', 'Padrão', 'Rua Z, 700', NULL),
(15, '2024-05-13', 'Entrega Rápida', 'Rua Z, 700', NULL);
