-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS GerenciamentoClientes;

-- Selecionar o banco
USE GerenciamentoClientes;

-- Tabela de clientes
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);

-- Tabela de vendas
CREATE TABLE IF NOT EXISTS vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


-- Inserir dados na tabela clientes
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao.silva@example.com', '11999999999'),
('Maria Oliveira', 'maria.oliveira@example.com', '11988888888'),
('Ana Costa', 'ana.costa@example.com', '11977777777'),
('Carlos Souza', 'carlos.souza@example.com', NULL);

-- Inserir dados na tabela vendas
INSERT INTO vendas (cliente_id, valor, data_venda) VALUES
(1, 250.00, '2024-01-15'),
(2, 300.00, '2024-02-20'),
(1, 150.00, '2024-03-10'),
(3, 400.00, '2024-04-05');

