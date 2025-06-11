DROP DATABASE IF EXISTS vendasDB;
CREATE DATABASE vendasDB;
USE vendasDB;

-- Tabela unificada de vendas com nomes diretos
CREATE TABLE vendas_detalhada (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    nome_produto VARCHAR(100),
    nome_loja VARCHAR(100),
    cidade VARCHAR(100),
    gerente VARCHAR(100),
    data_venda DATE,
    quantidade INT,
    preco_unitario DECIMAL(10,2)
);

-- Dados de vendas
INSERT INTO vendas_detalhada 
(nome_cliente, nome_produto, nome_loja, cidade, gerente, data_venda, quantidade, preco_unitario) 
VALUES
('Ana Souza', 'Notebook', 'Tech Center', 'Rio Branco', 'João Mendes', '2024-06-01', 1, 3500.00),
('Carlos Lima', 'Mouse', 'Tech Center', 'Rio Branco', 'João Mendes', '2024-06-01', 2, 80.00),
('Beatriz Torres', 'Teclado', 'Eletrônicos AC', 'Cruzeiro do Sul', 'Mariana Alves', '2024-06-02', 1, 120.00),
('Marcos Silva', 'Monitor', 'Loja Digital', 'Riu Branco', 'Ricardo Torres', '2024-06-02', 1, 899.90),
('Juliana Rocha', 'Webcam', 'Loja Digital', 'Riu Branco', 'Ricardo Torres', '2024-06-03', 1, 250.00),
('Ana Souza', 'Headset', 'InfoMais', 'Sena Madureira', 'Larissa Nunes', '2024-06-03', 1, 310.00),
('Carlos Lima', 'Mouse', 'InfoMais', 'Sena Madureira', 'Larissa Nunes', '2024-06-04', 3, 80.00),
('Beatriz Torres', 'Notebook', 'Tech Center', 'Rio Branco', 'João Mendes', '2024-06-04', 2, 3500.00),
('Marcos Silva', 'Teclado', 'Eletrônicos AC', 'Cruzeiro do Sul', 'Mariana Alves', '2024-06-05', 1, 120.00),
('Juliana Rocha', 'Headset', 'Eletrônicos AC', 'Cruzeiro do Sul', 'Mariana Alves', '2024-06-05', 1, 310.00),
('Ana Souza', 'Monitor', 'Tech Center', 'Rio Branco', 'João Mendes', '2024-06-06', 1, 899.90),
('Carlos Lima', 'Webcam', 'Loja Digital', 'Riu Branco', 'Ricardo Torres', '2024-06-06', 2, 250.00);
