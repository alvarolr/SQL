--Crie um banco de dados chamado GerenciamentoDB.
CREATE DATABASE GerenciamentoDB;

/*Crie as seguintes tabelas:
Tabela clientes
id: Chave primária, auto incremento.
nome: Nome do cliente, obrigatório.
email: Email do cliente, único.
telefone: Telefone do cliente, pode ser nulo.


Tabela vendas
id: Chave primária, auto incremento.
cliente_id: Chave estrangeira, referenciando clientes(id).
valor: Valor da venda.
data_venda: Data em que a venda foi realizada.
sql
Copiar
Editar
CREATE
*/
  
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

/*Insira os seguintes clientes na tabela clientes:
nome	email	telefone
João Silva	joao.silva@example.com	11999999999
Maria Oliveira	maria.oliveira@example.com	11988888888
Carlos Souza	carlos.souza@example.com	NULL
Ana Costa	ana.costa@example.com	11977777777

*/
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao.silva@example.com', '11999999999'),
('Maria Oliveira', 'maria.oliveira@example.com', '11988888888'),
('Carlos Souza', 'carlos.souza@example.com', NULL),
('Ana Costa', 'ana.costa@example.com', '11977777777');


/*Insira as seguintes vendas na tabela vendas:
cliente_id	valor	data_venda
1	250.00	2024-01-15
2	300.00	2024-02-20
1	150.00	2024-03-10
3	400.00	2024-04-05
*/

INSERT INTO vendas (cliente_id, valor, data_venda) VALUES
(1, 250.00, '2024-01-15'),
(2, 300.00, '2024-02-20'),
(1, 150.00, '2024-03-10'),
(3, 400.00, '2024-04-05');

--Liste todos os clientes cadastrados.
SELECT * FROM clientes;

--Exiba apenas o nome e o email dos clientes.
SELECT nome, email FROM clientes;

--Liste todas as vendas realizadas, incluindo o cliente que realizou a venda.
SELECT * FROM vendas;

--Liste as vendas realizadas após a data 2024-02-01.
SELECT * FROM vendas WHERE data_venda > '2024-02-01';

--Exiba os clientes que não têm telefone cadastrado.
SELECT nome FROM clientes WHERE telefone IS NULL;

--Mostre o valor total de todas as vendas.
SELECT SUM(valor) AS total_vendas FROM vendas;


--Conte quantos clientes estão cadastrados.
SELECT COUNT(*) AS total_clientes FROM clientes;

--Mostre o valor médio das vendas realizadas.
SELECT AVG(valor) AS valor_medio FROM vendas;

--Liste o maior e o menor valor de venda.
SELECT MAX(valor) AS maior_venda, MIN(valor) AS menor_venda FROM vendas;

--Liste o nome dos clientes e os valores de suas vendas.
SELECT clientes.nome, vendas.valor
FROM clientes
INNER JOIN vendas ON clientes.id = vendas.cliente_id;

--Liste todos os clientes, mesmo os que não realizaram vendas.
SELECT clientes.nome, vendas.valor
FROM clientes
LEFT JOIN vendas ON clientes.id = vendas.cliente_id;

--Liste os clientes que não realizaram nenhuma venda.
SELECT clientes.nome
FROM clientes
LEFT JOIN vendas ON clientes.id = vendas.cliente_id
WHERE vendas.id IS NULL;


--Mostre o nome dos clientes e o valor total de vendas realizadas por cada um.
SELECT clientes.nome, SUM(vendas.valor) AS total_vendas
FROM clientes
LEFT JOIN vendas ON clientes.id = vendas.cliente_id
GROUP BY clientes.nome;


--Liste os clientes que realizaram mais de uma venda.
SELECT clientes.nome, COUNT(vendas.id) AS total_vendas
FROM clientes
INNER JOIN vendas ON clientes.id = vendas.cliente_id
GROUP BY clientes.nome
HAVING total_vendas > 1;

--Liste as vendas e inclua a informação "Sem Cliente" para vendas que não têm cliente associado (use RIGHT JOIN).
SELECT clientes.nome AS cliente_nome, vendas.valor
FROM clientes
RIGHT JOIN vendas ON clientes.id = vendas.cliente_id;


--Mostre os clientes com a data de sua última venda.
SELECT clientes.nome, MAX(vendas.data_venda) AS ultima_venda
FROM clientes
INNER JOIN vendas ON clientes.id = vendas.cliente_id
GROUP BY clientes.nome;
