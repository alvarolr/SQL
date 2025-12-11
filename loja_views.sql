-- CRIAÇÃO DO BANCO
CREATE DATABASE IF NOT EXISTS loja_views;
USE loja_views;

-- TABELA CLIENTES
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome   VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- TABELA PRODUTOS
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome  VARCHAR(100)   NOT NULL,
    preco DECIMAL(10,2)  NOT NULL
);

-- TABELA PEDIDOS
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente  INT          NOT NULL,
    data_pedido DATE         NOT NULL,
    total       DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_pedidos_clientes
        FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- TABELA ITENS_PEDIDO
CREATE TABLE itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido   INT          NOT NULL,
    id_produto  INT          NOT NULL,
    quantidade  INT          NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_itens_pedido_pedidos
        FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    CONSTRAINT fk_itens_pedido_produtos
        FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- ============================
-- DADOS DE EXEMPLO
-- ============================

-- CLIENTES (inclui alguns de Rio Branco para a VIEW clientes_riobranco)
INSERT INTO clientes (nome, cidade) VALUES
('Ana Silva',   'Rio Branco'),
('Bruno Souza', 'Rio Branco'),
('Carla Lima',  'Porto Acre'),
('Diego Alves', 'Cruzeiro do Sul');

-- PRODUTOS (alguns com preço > 100 para a VIEW produtos_caros)
INSERT INTO produtos (nome, preco) VALUES
('Teclado', 80.00),
('Mouse',   50.00),
('Monitor', 550.00),
('Notebook', 3500.00);

-- PEDIDOS (totais compatíveis com os itens abaixo)
INSERT INTO pedidos (id_cliente, data_pedido, total) VALUES
(1, '2025-05-10', 630.00),   -- Teclado (80) + Monitor (550)
(2, '2025-05-11', 3550.00),  -- Notebook (3500) + Mouse (50)
(3, '2025-05-12', 100.00);   -- 2x Mouse (2 * 50)

-- ITENS_PEDIDO
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, valor_unitario) VALUES
-- Pedido 1 - Ana
(1, 1, 1,  80.00),   -- 1 Teclado
(1, 3, 1, 550.00),   -- 1 Monitor

-- Pedido 2 - Bruno
(2, 4, 1, 3500.00),  -- 1 Notebook
(2, 2, 1,   50.00),  -- 1 Mouse

-- Pedido 3 - Carla
(3, 2, 2,   50.00);  -- 2 Mouses
