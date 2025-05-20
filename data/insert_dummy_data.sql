
-- USERS
INSERT INTO users (name, email, status) VALUES
('Aisyah QA', 'aisyah.qa@mail.com', 'active'),
('Budi Santoso', 'budi@mail.com', 'inactive');

-- PRODUCTS
INSERT INTO products (name, price, stock) VALUES
('Gadget A', 100000, 5),
('Voucher Game', 50000, 200);

-- TRANSACTIONS
INSERT INTO transactions (user_id, product_id, quantity, total_price) VALUES
(1, 1, 2, 200000),
(2, 2, 3, 150000);

-- COMPLAINTS
INSERT INTO complaints (user_id, description, status) VALUES
(2, 'Login issue', 'open');

-- FEEDBACKS
INSERT INTO feedbacks (user_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Great product!'),
(2, 2, 3, 'It’s okay');

-- PAYMENTS
INSERT INTO payments (transaction_id, method, status, paid_at) VALUES
(1, 'credit_card', 'paid', CURRENT_TIMESTAMP),
(2, 'bank_transfer', 'pending', NULL);

-- SUPPORT TICKETS
INSERT INTO support_tickets (user_id, category, status, agent_name, created_at) VALUES
(1, 'technical', 'open', 'Agent A', CURRENT_TIMESTAMP - INTERVAL '5 days');

-- LOGS
INSERT INTO logs (user_id, activity, created_at) VALUES
(1, 'Logged in', CURRENT_TIMESTAMP),
(1, 'Viewed product', CURRENT_TIMESTAMP);

-- REWARDS
INSERT INTO rewards (user_id, points, level) VALUES
(1, 100, 'Gold'),
(2, 50, 'Silver');

-- NOTIFICATIONS
INSERT INTO notifications (user_id, message, read_status) VALUES
(1, 'Your order has shipped.', FALSE),
(2, 'New promotion available.', TRUE);

-- ADDRESSES
INSERT INTO addresses (user_id, city, province, postal_code) VALUES
(1, 'Jakarta', 'DKI Jakarta', '12345'),
(2, 'Bandung', 'West Java', '67890');

-- USER SESSIONS
INSERT INTO user_sessions (user_id, session_start, session_end, ip_address) VALUES
(1, NOW() - INTERVAL '2 hours', NOW(), '192.168.1.1');

-- CART ITEMS
INSERT INTO cart_items (user_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 2, 2);

-- CATEGORIES
INSERT INTO categories (name) VALUES
('Electronics'),
('Games');

-- PRODUCT CATEGORIES
INSERT INTO product_categories (product_id, category_id) VALUES
(1, 1),
(2, 2);

-- PROMOTIONS
INSERT INTO promotions (name, discount, valid_until) VALUES
('Year End Sale', 20, CURRENT_DATE + INTERVAL '15 days');

-- REFERRALS
INSERT INTO referrals (user_id, referred_by) VALUES
(2, 1);
