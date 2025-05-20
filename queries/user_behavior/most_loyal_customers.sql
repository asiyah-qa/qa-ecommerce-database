SELECT u.name,
       COUNT(t.id) AS total_transactions
FROM users u
JOIN transactions t ON u.id = t.user_id
GROUP BY u.name
ORDER BY total_transactions DESC
LIMIT 5;