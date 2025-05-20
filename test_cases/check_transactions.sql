
-- Validate transactions have matching users and products
SELECT * FROM transactions
WHERE user_id NOT IN (SELECT id FROM users)
   OR product_id NOT IN (SELECT id FROM products);
