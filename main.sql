CREATE TABLE orders (
    id INT,
    product_name VARCHAR(50),
    quantity INT
);

INSERT INTO orders VALUES
(1, 'Olma', 60),
(2, 'Olma', 50),
(3, 'Banan', 30);

SELECT product_name, SUM(quantity) AS total
FROM orders
GROUP BY product_name
HAVING SUM(quantity) > 100;
