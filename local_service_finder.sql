CREATE DATABASE local_service_finder;
USE local_service_finder;
DROP TABLE IF EXISTS user;
CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);

INSERT INTO user (name, email, password, role) VALUES
('John Provider', 'john@local.com', '$2a$10$XXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'PROVIDER'),
('Alice Customer', 'alice@local.com', '$2a$10$XXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'CUSTOMER');
DROP TABLE IF EXISTS service;
CREATE TABLE service (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(1000),
    category VARCHAR(255),
    price DOUBLE,
    provider_id BIGINT,
    CONSTRAINT fk_provider FOREIGN KEY (provider_id) REFERENCES users(id)
);

INSERT INTO services (title, description, category, price, provider_id) VALUES
('AC Repair', 'Fix AC units in one day', 'Electrician', 450.0, 1),
('Plumbing Fix', 'All plumbing services', 'Plumber', 300.0, 1),
('Math Tutoring', 'Tutoring for high school students', 'Tutor', 200.0, 1);
SELECT * FROM services;
