-- Users table
CREATE TABLE employees (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Full_Name VARCHAR(61) GENERATED ALWAYS AS (CONCAT(First_Name, ' ', Last_Name)) Virtual,
    Birth_Date DATE
);

INSERT INTO employees (First_Name, Last_Name, Birth_Date) VALUES
('John', 'Doe', '1995-04-20');