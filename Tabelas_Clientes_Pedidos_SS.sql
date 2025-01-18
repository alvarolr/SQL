-- Criação da tabela de Clientes
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Inserção de dados na tabela de Clientes
INSERT INTO Customers (customer_id, name, city)
VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'New York'),
(4, 'Diana', 'Chicago'),
(5, 'Eve', 'Los Angeles');

-- Criação da tabela de Pedidos
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserção de dados na tabela de Pedidos
INSERT INTO Orders (order_id, customer_id, amount, order_date)
VALUES
(101, 1, 200.00, '2025-01-10'),
(102, 2, 450.00, '2025-01-11'),
(103, 1, 300.00, '2025-01-12'),
(104, 3, 150.00, '2025-01-13'),
(105, 4, 500.00, '2025-01-14'),
(106, 2, 400.00, '2025-01-15'),
(107, 5, 250.00, '2025-01-16');
