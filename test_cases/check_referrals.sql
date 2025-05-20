
-- Referrals where referred user is not in users
SELECT * FROM referrals
WHERE user_id NOT IN (SELECT id FROM users)
   OR referred_by NOT IN (SELECT id FROM users);
