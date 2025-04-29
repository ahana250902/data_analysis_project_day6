SELECT 
    DATE_FORMAT(SaleDate, '%Y-%m') AS Month,
    SUM(Quantity * Price) AS TotalSales
FROM Sales
JOIN Products ON Sales.ProductID = Products.ProductID
GROUP BY Month
ORDER BY Month;
SELECT 
    P.ProductName,
    SUM(S.Quantity) AS TotalUnitsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalUnitsSold DESC;
SELECT 
    C.Region,
    SUM(S.Quantity * P.Price) AS RegionSales
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY C.Region;
SELECT 
    P.Category,
    SUM(S.Quantity * P.Price) AS CategorySales
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category;



