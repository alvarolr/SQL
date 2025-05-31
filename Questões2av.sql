SELECT nome, cidade FROM clientes WHERE cidade = 'Rio Branco';

SELECT clientes.nome, pedidos.data
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.id_cliente;


SELECT produto, SUM(quantidade) AS total_quantidade
FROM vendas
GROUP BY produto;


SELECT nome, cidade
FROM fornecedores
WHERE nome LIKE 'Tech%';


SELECT produtos.nome AS produto, fornecedores.nome AS fornecedor
FROM produtos
LEFT JOIN fornecedores ON produtos.id_fornecedor = fornecedores.id;


SELECT id_cliente, COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY id_cliente;
