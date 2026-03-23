CREATE DATABASE expense_tracker;
USE expense_tracker;

CREATE TABLE expenses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10,2) NOT NULL,
    category VARCHAR(50),
    expense_date DATE
);

CREATE TABLE expense_log(
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(100),
    log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);