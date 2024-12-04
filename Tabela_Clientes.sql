-- Criar a tabela de vendas
CREATE TABLE IF NOT EXISTS vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único da venda
    cliente_id INT,                     -- Relaciona a venda ao cliente
    valor DECIMAL(10, 2) NOT NULL,      -- Valor da venda
    data_venda DATE NOT NULL,           -- Data em que a venda foi realizada
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) -- Chave estrangeira
);




INSERT INTO vendas (cliente_id, valor, data_venda) VALUES
(1, 250.00, '2024-01-15'), -- João Silva
(2, 300.00, '2024-02-20'), -- Maria Oliveira
(1, 150.00, '2024-03-10'), -- João Silva
(3, 400.00, '2024-04-05'), -- Carlos Souza
(5, 500.00, '2024-05-12'); -- Pedro Santos
