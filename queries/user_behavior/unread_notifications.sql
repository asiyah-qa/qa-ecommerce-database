SELECT u.name,
       COUNT(n.id) AS unread_notifications
FROM users u
JOIN notifications n ON u.id = n.user_id
WHERE n.read_status = FALSE
GROUP BY u.name;