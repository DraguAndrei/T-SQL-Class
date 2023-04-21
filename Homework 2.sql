USE AdventureWorks2012

-- EXERCISE 1 

SELECT p.Name AS ProductName, pc.Name AS CategoryName
FROM Production.Product p
INNER JOIN Production.ProductSubcategory ps
ON p.ProductSubcategoryID = ps.ProductSubcategoryID
INNER JOIN Production.ProductCategory pc
ON ps.ProductCategoryID = pc.ProductCategoryID
ORDER BY pc.Name, p.Name;




-- EXERCISE 2

select c.CustomerID, o.SalesOrderID, d.SalesOrderDetailID,
*
from Sales.SalesOrderHeader o
join Sales.Customer c
on c.CustomerID=o.CustomerID
join Sales.SalesOrderDetail d
on o.SalesOrderID=d.SalesOrderID




-- EXERCISE 3

SELECT pc.Name AS CategoryName, ps.Name AS SubcategoryName
FROM Production.ProductSubcategory ps
JOIN Production.ProductCategory pc
ON ps.ProductCategoryID = pc.ProductCategoryID
ORDER BY pc.Name, ps.Name;