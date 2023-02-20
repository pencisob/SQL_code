/*

--Practice for Reporting Queries: Count
select count(distinct(City)) from Customers

select ProductID, max(UnitPrice) as max, avg(UnitPrice) as avg, min(UnitPrice) as min from OrderDetails
Group by ProductID

select ProductID, sum(Quantity) as total, avg (Discount) as Disc from OrderDetails
Group by ProductID

-- Practice for Join Queries
-- INNER JOIN

select Products.ProductID, Products.ProductName , Categories.CategoryName from (Products 
INNER JOIN Categories on Products.CategoryID = Categories.CategoryID)
select Employees.LastName, Employees.FirstName, Employees.Title, Orders.ShipCity, Orders.ShipCountry from (Employees
INNER JOIN Orders on Employees.EmployeeID = Orders.EmployeeID)
where Orders.ShipCountry = 'France'
--LEFT JOIN
select Employees.EmployeeID, Employees.LastName, Employees.Firstname, Employees.Title from Employees
LEFT JOIN Orders on Employees.EmployeeID = Orders.EmployeeID
select products.ProductID, products.ProductName, Categories.CategoryName from Products
LEFT JOIN Categories on Products.CategoryID = Categories.CategoryID
--RIGHT JOIN
Select Orders.ShipVia, orders.ShipCountry , Shippers.ShipperID, shippers.CompanyName, Shippers.Phone from Orders RIGHT JOIN Shippers ON orders.ShipVia = Shippers.ShipperID
Select Customers.CompanyName, Customers.ContactName, Customers.Country, Orders.OrderID from Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID  
--FULL JOIN
select products.ProductName, products.SupplierID, Suppliers.CompanyName as supplier, Suppliers.ContactName from Suppliers FULL OUTER JOIN Products ON Products.SupplierID = Suppliers.SupplierID
-- SELF JOIN
select t1.customerID, t1.ShipCountry from orders t1, orders t2
where 
t1.ShipCountry = 'France'

-- Practice for view queries
-- Creating a view
create view producttwo AS Select ProductName, CategoryID from Products
WHERE
CategoryID in (1,2,3)
-- Retrieve the view
select * from producttwo
-- Droping the view
drop view producttwo

-- Queries for columns modification
--ALTER TABLE Products ADD recall2 integer
--ALTER TABLE Products Modify recall2 integer
--ALTER TABLE Products Drop recall2 integer
--create table test (test1 integer, test2 varchar)
*/
















