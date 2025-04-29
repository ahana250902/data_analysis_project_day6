# Sales Analysis Project

This project consists of SQL scripts to create a database, populate it with sample data, and perform sales analysis.

## Files

* **Database\_creation.sql:** This script contains SQL commands to:
    * Create a database named `SalesAnalysis`.
    * Create three tables: `Products`, `Customers`, and `Sales`.
    * Define the schema for each table, including data types and constraints.
    * Insert sample data into the tables.

* **Analysis.sql:** This script contains SQL queries to analyze the sales data.  It performs the following analyses:
    * Calculates total sales by month.
    * Determines the total units sold for each product.
    * Calculates regional sales.
    * Calculates sales by product category.

## Database Schema

### `Products` Table

| Column      | Data Type     | Description             |
| ----------- | ------------- | ----------------------- |
| ProductID   | INT           | Primary Key, Auto Increment |
| ProductName | VARCHAR(100)  | Name of the product     |
| Category    | VARCHAR(50)   | Category of the product |
| Price       | DECIMAL(10, 2) | Price of the product    |

### `Customers` Table

| Column       | Data Type    | Description            |
| ------------ | ------------ | ---------------------- |
| CustomerID   | INT          | Primary Key, Auto Increment |
| CustomerName | VARCHAR(100) | Name of the customer   |
| Region       | VARCHAR(50)  | Region of the customer |

### `Sales` Table

| Column     | Data Type | Description             |
| ---------- | --------- | ----------------------- |
| SaleID     | INT       | Primary Key, Auto Increment |
| ProductID  | INT       | Foreign Key to `Products` |
| CustomerID | INT       | Foreign Key to `Customers`|
| Quantity   | INT       | Quantity sold           |
| SaleDate   | DATE      | Date of the sale        |

## Analysis Queries

The `Analysis.sql` file includes the following queries:

1.  **Total Sales by Month:** Calculates the sum of (Quantity \* Price) for each month.
2.  **Total Units Sold by Product:** Calculates the total quantity sold for each product, ordered by the highest selling.
3.  **Regional Sales:** Calculates the total sales for each region.
4.  **Category Sales:** Calculates the total sales for each product category.

## How to Use

1.  **Database Creation:** Execute the `Database_creation.sql` script to create the database and populate it with data.  Ensure you have a MySQL server (or compatible) installed and running.
2.  **Analysis:** Execute the `Analysis.sql` script to perform the sales analysis.  This will provide insights into sales trends, product performance, and regional contributions.

## Dependencies

* A SQL database system (e.g., MySQL)

