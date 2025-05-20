SELECT *
FROM support_tickets
WHERE status != 'closed'
  AND created_at < NOW() - INTERVAL '3 days';