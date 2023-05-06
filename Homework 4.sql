--1.Using the AVG function to calculate the average value of a column:
SELECT AVG(ListPrice) FROM Production.Product;

--2.Using SUM to calculate the total sales of all orders in the Sales.SalesOrderHeader table:
SELECT SUM(TotalDue) FROM Sales.SalesOrderHeader;

--3.Using the GETDATE function to return the current date and time:
SELECT GETDATE();

--4.Using the YEAR function to extract the year from a date:
SELECT YEAR(HireDate) AS HireYear FROM HumanResources.Employee;

--5.Using the CONCAT function to concatenate two or more strings:
SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Person.Person;

--6.Using the DATEDIFF function to calculate the difference between two dates:
SELECT DATEDIFF(yy, BirthDate, GETDATE()) AS Age FROM Person.Person;

--7.Using the COUNT function to count the number of rows in a table:
SELECT COUNT(*) AS TotalRows FROM Person.Person;

--8.Using the MAX function to find the maximum value in a column:
SELECT MAX(SalesLastYear) AS MaxSales FROM Sales.SalesPerson;

--9.Using the LEN function to return the length of a string:
SELECT LEN(FirstName) AS NameLength FROM Person.Person;

--10.Using the REPLACE function to replace a substring with another substring:
SELECT REPLACE(Title, 'Ms.', 'Mrs.') AS NewTitle FROM HumanResources.Employee;

--11.Using the LEFT function to return a specified number of characters from the beginning of a string:
SELECT LEFT(FirstName, 3) AS ShortName FROM Person.Person;

--12.Using the UPPER function to convert a string to uppercase:
SELECT UPPER(FirstName) AS UpperName FROM Person.Person;

--13.Using the LOWER function to convert a string to lowercase:
SELECT LOWER(FirstName) AS LowerName FROM Person.Person;

--14.Using the SUBSTRING function to return a portion of a string:
SELECT SUBSTRING(Title, 1, 3) AS ShortTitle FROM HumanResources.Employee;

--15.Using the COALESCE function to return the first non-null value in a list of values:
SELECT COALESCE(MiddleName, '') AS MiddleName FROM Person.Person;

--16.Using the TRIM function to remove leading and trailing spaces from a string:
SELECT TRIM(FirstName) AS FirstNameNoSpaces FROM Person.Person

--17.Using the CHARINDEX function to return the position of a string within another string:
SELECT CHARINDEX('V', FirstName) AS PositionOfV FROM Person.Person

--18.Using the DAY function to extract the day from a date:
SELECT DAY(HireDate) AS HireDay FROM HumanResources.Employee

--19.Usign the DATEADD function to add a specified interval to a date:
SELECT DATEADD(year, 2, HireDate) AS HireDatePlus2Years FROM HumanResources.Employee

--20.Using the ROUND function to round a number to a specified number of decimal places:
SELECT ROUND(SalesYTD, 2) AS RoundedSalesYTD FROM Sales.SalesPerson
