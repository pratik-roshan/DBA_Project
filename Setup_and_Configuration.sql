-- CREATION OF THE DATABASE -- 
CREATE DATABASE taskdb;

-- User Creation and it's configuration-- 
CREATE USER 'pratik'@'localhost' IDENTIFIED BY 'Mysql@123';

GRANT ALL PRIVILEGES ON taskdb.* TO 'pratik'@'localhost';

FLUSH PRIVILEGES;

USE taskdb;

-- Creation of Tables-- 
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contact bigint
);

-- Establishment of Relationship Using Foreign Key -- 
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insertion of the Values into the Tables -- 
INSERT INTO users (id, username, email, contact)
VALUES (1, 'Pratik Roshan Shah', 'pratikroshanshah@gmail.com', 9840030137),
(2, 'Sagar Sharma', 'sagarsharma@outlook.com', 9823778182);

INSERT INTO orders (order_id, user_id, order_date)
VALUES (101, 1, '2024-02-29');

-- Performing the JOIN operation -- 
Select * From users JOIN orders ON users.id = orders.user_id;
