SELECT name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING AVG(amount) > (SELECT AVG(amount) FROM Orders)
);


SELECT name, (
    SELECT COUNT(*)
    FROM Orders
    WHERE Orders.customer_id = Customers.customer_id
) AS order_count
FROM Customers;


SELECT city, (
    SELECT SUM(amount)
    FROM Orders
    WHERE Orders.customer_id IN (
        SELECT customer_id
        FROM Customers
        WHERE Customers.city = c.city
    )
) AS total_orders
FROM Customers c
GROUP BY city;
