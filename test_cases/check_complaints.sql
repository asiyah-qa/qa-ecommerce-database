
-- Complaints without description
SELECT * FROM complaints WHERE description IS NULL OR TRIM(description) = '';
