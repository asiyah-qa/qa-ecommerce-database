
-- Sessions where end time is before start time
SELECT * FROM user_sessions WHERE session_end < session_start;
