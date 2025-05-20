
-- Check for categories with no name
SELECT * FROM categories WHERE name IS NULL OR TRIM(name) = '';
