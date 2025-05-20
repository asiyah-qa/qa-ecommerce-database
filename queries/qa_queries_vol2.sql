
-- QA Real-case Queries Vol. 2

-- 1. Users with both complaints and feedbacks
SELECT DISTINCT u.name
FROM users u
JOIN complaints c ON u.id = c.user_id
JOIN feedbacks f ON u.id = f.user_id;

-- 2. Sessions longer than 4 hours
SELECT user_id, session_start, session_end,
       EXTRACT(EPOCH FROM (session_end - session_start))/3600 AS duration_hours
FROM user_sessions
WHERE (session_end - session_start) > INTERVAL '4 hours';
