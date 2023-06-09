/*  
------------------------------Homework------------------------------------------|
																				|
1. Retrieve the top 10 most expensive products in the 'Product' table.			|
2. Find the total number of products for each product subcategory.			    |
3. List all products that have a standard cost between $100 and $500.			|
4. Retrieve the top 5 product subcategories with the highest average list price.|
5. Find the total number of discontinued products.							    |
--------------------------------------------------------------------------------|
*/

USE AdventureWorks2012;
--EX 1--

SELECT TOP 10 ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

--EX 2--

SELECT ProductSubcategoryID, COUNT(*) TotalNmbProducts
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL
GROUP BY ProductSubcategoryID
ORDER BY TotalNmbProducts DESC

--EX 3--

SELECT Name, StandardCost
FROM Production.Product
WHERE StandardCost BETWEEN 100 AND 500
ORDER BY StandardCost ASC

--EX 4--

SELECT TOP 5 ProductSubcategoryID, AVG(Listprice) AvarageListPrice
FROM Production.Product
GROUP BY ProductSubcategoryID
ORDER BY AvarageListPrice DESC

--EX 5--

SELECT COUNT(*) TotalDiscontinuedProducts
FROM Production.Product
WHERE SellEndDate IS NOT NULL
-----------------------------------------------------------------------------------------------------