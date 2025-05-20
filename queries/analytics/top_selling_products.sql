SELECT p.name AS product_name,
       SUM(t.quantity) AS total_sold
FROM products p
JOIN transactions t ON p.id = t.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 5;