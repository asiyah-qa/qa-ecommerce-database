
-- Find payments with NULL method or unpaid
SELECT * FROM payments WHERE method IS NULL OR status != 'paid';
