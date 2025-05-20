
-- Product-category links with invalid foreign keys
SELECT * FROM product_categories
WHERE product_id NOT IN (SELECT id FROM products)
   OR category_id NOT IN (SELECT id FROM categories);
