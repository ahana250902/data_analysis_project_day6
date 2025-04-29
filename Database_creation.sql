CREATE DATABASE SalesAnalysis;
USE SalesAnalysis;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(50)
);
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Quantity INT,
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Products
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 50000.00),
('Smartphone', 'Electronics', 20000.00),
('Shoes', 'Fashion', 2500.00),
('T-shirt', 'Fashion', 800.00);

-- Customers
INSERT INTO Customers (CustomerName, Region) VALUES
('Rahul Das', 'East'),
('Anjali Verma', 'West'),
('Sunita Rao', 'North'),
('Amit Shah', 'South');

-- Sales
INSERT INTO Sales (ProductID, CustomerID, Quantity, SaleDate) VALUES
(1, 1, 1, '2024-01-15'),
(2, 2, 2, '2024-02-20'),
(3, 3, 3, '2024-03-10'),
(4, 4, 5, '2024-03-12'),
(1, 1, 1, '2024-04-01'),
(2, 2, 1, '2024-04-03');




