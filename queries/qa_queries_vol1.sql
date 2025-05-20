
-- QA Validation Queries Vol. 1

-- 1. Users with no transactions
SELECT u.id, u.name
FROM users u
LEFT JOIN transactions t ON u.id = t.user_id
WHERE t.id IS NULL;

-- 2. Active users without rewards
SELECT u.id, u.name
FROM users u
LEFT JOIN rewards r ON u.id = r.user_id
WHERE u.status = 'active' AND r.id IS NULL;
