CREATE DATABASE IF NOT EXISTS comercio;
USE comercio;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  cidade VARCHAR(100)
);

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2)
);

CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  data_pedido DATE,
  total DECIMAL(10,2),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE itens_pedido (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_pedido INT,
  id_produto INT,
  quantidade INT,
  FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
  FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserindo dados
INSERT INTO clientes (nome, cidade) VALUES
('Ana Souza', 'Rio Branco'),
('João Pedro', 'Cruzeiro'),
('Carlos Lima', 'Sena');

INSERT INTO produtos (nome, preco) VALUES
('Teclado', 150.00),
('Mouse', 70.00),
('Monitor', 600.00);

INSERT INTO pedidos (id_cliente, data_pedido, total) VALUES
(1, '2024-05-10', 550.00),
(2, '2024-06-15', 300.00),
(1, '2024-07-01', 450.00);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 2, 3),
(3, 3, 1);
