CREATE DATABASE IF NOT EXISTS programadorabordo;
USE programadorabordo;

CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  product VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

INSERT INTO products (product, price)
VALUES ('Curso Front-End', 2500),
('Curso JS Fullstack', 900);
