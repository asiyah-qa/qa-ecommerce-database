
-- Feedback with invalid ratings (e.g., out of 1-5 range)
SELECT * FROM feedbacks WHERE rating < 1 OR rating > 5;
