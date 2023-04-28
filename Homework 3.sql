-- Homework:
-- Problem 1: List all products and their suppliers.

SELECT p.Name AS ProductName, v.Name AS SupplierName
FROM Production.Product p
JOIN Purchasing.ProductVendor pv ON p.ProductID = pv.ProductID
JOIN Purchasing.Vendor v ON pv.BusinessEntityID = v.BusinessEntityID;

-- Problem 2: List all orders placed by a specific customer (e.g., CustomerID = 29825) along with the order details.

SELECT oh.SalesOrderID, oh.OrderDate, od.ProductID,
       od.OrderQty, od.UnitPrice, od.LineTotal
       
FROM Sales.SalesOrderHeader oh
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Sales.Customer c ON oh.CustomerID = c.CustomerID

-- Problem 3: List all customers and their respective sales territories.


SELECT c.CustomerID, cc.FirstName, cc.LastName, 
       st.Name AS SalesTerritory
FROM Sales.Customer c
JOIN Sales.SalesTerritory st ON c.TerritoryID = st.TerritoryID
JOIN Person.Person cc ON c.PersonID = cc.BusinessEntityID

-- Problem 4: List all products with their subcategories and categories.

SELECT p.ProductID, p.Name AS ProductName, pc.Name AS ProductCategory, psc.Name AS ProductSubcategory
FROM Production.Product p
JOIN Production.ProductSubcategory psc ON p.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN Production.ProductCategory pc ON psc.ProductCategoryID = pc.ProductCategoryID;

-- Problem 5: List all vendors and their respective purchase order approvers.

SELECT Distinct v.BusinessEntityID as BusinessEntityID, v.Name AS VendorName, e.FirstName as FirstName, e.LastName as LastName, g.EmailAddress as EmailAdress

FROM Purchasing.PurchaseOrderHeader ppoh
JOIN Purchasing.Vendor v ON ppoh.VendorID = v.BusinessEntityID
JOIN Person.Person e ON ppoh.EmployeeID=e.BusinessEntityID
JOIN Person.EmailAddress g ON e.BusinessEntityID=g.BusinessEntityID




