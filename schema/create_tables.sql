
-- USERS
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    status VARCHAR(10)
);

-- PRODUCTS
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL,
    stock INT
);

-- TRANSACTIONS
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    product_id INT REFERENCES products(id),
    quantity INT,
    total_price DECIMAL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- COMPLAINTS
CREATE TABLE complaints (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    description TEXT,
    status VARCHAR(20)
);

-- FEEDBACKS
CREATE TABLE feedbacks (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    product_id INT REFERENCES products(id),
    rating INT,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PAYMENTS
CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    transaction_id INT,
    method VARCHAR(50),
    status VARCHAR(20),
    paid_at TIMESTAMP
);

-- SUPPORT TICKETS
CREATE TABLE support_tickets (
    id SERIAL PRIMARY KEY,
    user_id INT,
    category VARCHAR(50),
    status VARCHAR(20),
    agent_name VARCHAR(100),
    created_at TIMESTAMP
);

-- LOGS
CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    user_id INT,
    activity TEXT,
    created_at TIMESTAMP
);

-- REWARDS
CREATE TABLE rewards (
    id SERIAL PRIMARY KEY,
    user_id INT,
    points INT,
    level VARCHAR(20)
);

-- NOTIFICATIONS
CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    user_id INT,
    message TEXT,
    read_status BOOLEAN
);

-- ADDRESSES
CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    user_id INT,
    city VARCHAR(100),
    province VARCHAR(100),
    postal_code VARCHAR(20)
);

-- USER SESSIONS
CREATE TABLE user_sessions (
    id SERIAL PRIMARY KEY,
    user_id INT,
    session_start TIMESTAMP,
    session_end TIMESTAMP,
    ip_address VARCHAR(45)
);

-- CART ITEMS
CREATE TABLE cart_items (
    id SERIAL PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT
);

-- CATEGORIES
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- PRODUCT CATEGORIES (many-to-many)
CREATE TABLE product_categories (
    product_id INT,
    category_id INT,
    PRIMARY KEY (product_id, category_id)
);

-- PROMOTIONS
CREATE TABLE promotions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    discount INT,
    valid_until DATE
);

-- REFERRALS
CREATE TABLE referrals (
    id SERIAL PRIMARY KEY,
    user_id INT,
    referred_by INT
);
