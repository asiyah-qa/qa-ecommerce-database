SELECT DATE_TRUNC('month', created_at) AS month,
       COUNT(*) AS transaction_count,
       SUM(total_price) AS total_revenue
FROM transactions
GROUP BY month
ORDER BY month;