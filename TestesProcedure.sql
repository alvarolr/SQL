-- =========================================
-- BANCO DE DADOS PARA EXEMPLOS DE PROCEDURE
-- MySQL
-- =========================================

-- Apaga o banco, se já existir
DROP DATABASE IF EXISTS aula_procedure;

-- Cria o banco
CREATE DATABASE aula_procedure;
USE aula_procedure;

-- =========================================
-- TABELA: clientes
-- =========================================
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    cidade VARCHAR(50),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- TABELA: pedidos
-- =========================================
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    status_pedido VARCHAR(30) DEFAULT 'Pendente',
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- =========================================
-- INSERINDO CLIENTES
-- =========================================
INSERT INTO clientes (nome, email, telefone, cidade) VALUES
('Ana Souza', 'ana@gmail.com', '68999990001', 'Rio Branco'),
('Bruno Lima', 'bruno@gmail.com', '68999990002', 'Cruzeiro do Sul'),
('Carla Mendes', 'carla@gmail.com', '68999990003', 'Sena Madureira'),
('Daniel Rocha', 'daniel@gmail.com', '68999990004', 'Tarauacá'),
('Eduarda Silva', 'eduarda@gmail.com', '68999990005', 'Brasileia');

-- =========================================
-- INSERINDO PEDIDOS
-- =========================================
INSERT INTO pedidos (id_cliente, data_pedido, total, status_pedido) VALUES
(1, '2025-06-01 10:30:00', 150.00, 'Pago'),
(1, '2025-06-03 14:10:00', 220.50, 'Pendente'),
(2, '2025-06-02 09:00:00', 89.90, 'Pago'),
(3, '2025-06-04 16:20:00', 340.00, 'Cancelado'),
(4, '2025-06-05 11:15:00', 120.75, 'Pago'),
(2, '2025-06-06 17:40:00', 560.00, 'Pendente'),
(5, '2025-06-07 08:50:00', 45.00, 'Pago');

-- =========================================
-- PROCEDURE 1: LISTAR TODOS OS CLIENTES
-- =========================================
DELIMITER //

CREATE PROCEDURE listar_clientes()
BEGIN
    SELECT * FROM clientes;
END //

DELIMITER ;

-- Chamada:
-- CALL listar_clientes();

-- =========================================
-- PROCEDURE 2: MOSTRAR PEDIDOS DE UM CLIENTE
-- =========================================
DELIMITER //

CREATE PROCEDURE pedidos_por_cliente(IN p_id_cliente INT)
BEGIN
    SELECT * 
    FROM pedidos
    WHERE pedidos.id_cliente = p_id_cliente;
END //

DELIMITER ;

-- Chamada:
-- CALL pedidos_por_cliente(1);

-- =========================================
-- PROCEDURE 3: CADASTRAR PEDIDO
-- =========================================
DELIMITER //

CREATE PROCEDURE cadastrar_pedido(
    IN p_id_cliente INT,
    IN p_total DECIMAL(10,2)
)
BEGIN
    INSERT INTO pedidos (id_cliente, data_pedido, total)
    VALUES (p_id_cliente, NOW(), p_total);
END //

DELIMITER ;

-- Chamada:
-- CALL cadastrar_pedido(1, 199.90);

-- =========================================
-- CONSULTAS PARA TESTE
-- =========================================

-- Ver todos os clientes
SELECT * FROM clientes;

-- Ver todos os pedidos
SELECT * FROM pedidos;

-- Testar procedures
-- CALL listar_clientes();
-- CALL pedidos_por_cliente(2);
-- CALL cadastrar_pedido(3, 250.00);

-- Conferir se inseriu
-- SELECT * FROM pedidos WHERE id_cliente = 3;
