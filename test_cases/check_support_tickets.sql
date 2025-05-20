
-- Open support tickets older than 7 days
SELECT * FROM support_tickets
WHERE status != 'closed' AND created_at < NOW() - INTERVAL '7 days';
