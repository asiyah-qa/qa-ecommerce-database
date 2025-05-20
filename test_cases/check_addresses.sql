
-- Address with missing city or province
SELECT * FROM addresses WHERE city IS NULL OR province IS NULL;
