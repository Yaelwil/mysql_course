CREATE DATABASE IF NOT EXISTS employees;
CREATE DATABASE IF NOT EXISTS products;
CREATE DATABASE IF NOT EXISTS test;

USE employees;
CREATE TABLE employees (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(80) NOT NULL UNIQUE,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30) NOT NULL,
    Full_Name VARCHAR(61) GENERATED ALWAYS AS (CONCAT(First_Name, ' ', Last_Name)) VIRTUAL,
    Birth_Date DATE NOT NULL,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (Birth_Date < Created_at),
    CHECK (CHAR_LENGTH(First_Name) >= 2),
    CHECK (CHAR_LENGTH(Last_Name) >= 2)
);

CREATE TABLE employees_details (
    Email VARCHAR(80) UNIQUE,
    Age INT NOT NULL,
    Marital_Status VARCHAR(20),
    CONSTRAINT chk_min_age CHECK (Age >= 18),
    CONSTRAINT chk_marital_status CHECK (Marital_Status IN ('single', 'married', 'divorce')),
    CONSTRAINT fk_Email FOREIGN KEY (Email) REFERENCES employees(Email)
);

USE products;
CREATE TABLE categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(50)
);

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT cat_id_constraint FOREIGN KEY (category_id) REFERENCES categories(category_id),
    CONSTRAINT capital_letter CHECK (REGEXP_LIKE(product_name,'^[A-Z].*','c'))
);

CREATE TABLE customers (
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Street_Name VARCHAR(100) NOT NULL,
    House_Number INT NOT NULL,
    Full_Address VARCHAR(255) GENERATED ALWAYS AS (
        CONCAT(House_Number, ' ', Street_Name, ', ', City, ', ', Country)
    ) VIRTUAL,
    CONSTRAINT address_must_start_with_number CHECK (
        House_Number REGEXP '^[0-9]'
    )
);

USE test;
CREATE TABLE employees(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name varchar(30) NOT NULL,
    Birth_Date DATE NOT NULL,
    Hire_Date DATE NOT NULL,
    Department varchar(30) NOT NULL
    );

INSERT INTO employees.employees (Email, First_Name, Last_Name, Birth_Date) VALUES
('John.doe@example.com', 'John', 'Doe', '1995-04-20'),
('John.doe1@example.com', 'John', 'Doe', '1993-04-20');

INSERT INTO employees.employees_details (Email, Age, Marital_Status) VALUES
('John.doe@example.com', 20, 'single'),
('John.doe1@example.com', 80, 'married');

INSERT INTO products.categories (category_name) VALUES
('storage'), ('monitors'), ('cpus'), ('cameras');

INSERT INTO products.product (product_name, category_id) VALUES
('SSD 1TB', 1), ('SSD 16TB', 1), ('Monitor 19-inch', 2);

INSERT INTO products.customers (First_Name, Last_Name, Country, City, Street_Name, House_Number) VALUES
('John', 'Doe', 'Johnny', 'Jocity', 'king_john', 30);

INSERT INTO test.employees (First_Name, Last_Name, Hire_Date, Birth_Date, Department)
VALUES
    ('John1','Doe1', '2025-03-14', '2020-04-14', 'Accounting'),
    ('John2','Doe2', '2025-03-14', '1982-07-12', 'Finance'),
    ('John3','Doe3', '2025-03-14', '1987-07-12', 'Accounting')
    ;