
-- Expired promotions
SELECT * FROM promotions WHERE valid_until < CURRENT_DATE;
