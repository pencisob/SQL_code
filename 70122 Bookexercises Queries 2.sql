/*
--18.
select products.ProductID, Products.ProductName,  suppliers.CompanyName from products
LEFT JOIN Suppliers
ON
products.SupplierID = suppliers.SupplierID
order by products.ProductID

--19.
select orders.orderID, convert(date, orders.OrderDate) as Order_date, shippers.CompanyName from orders
LEFT JOIN Shippers
ON
orders.ShipVia = shippers.ShipperID
Where orders.OrderID < 10270

--Intermediate Problems

--20.
select count(products.UnitsInStock) as Units, Categories.CategoryName from Products
LEFT JOIN Categories
ON

--21.
Products.CategoryID=Categories.CategoryID
group by Categories.CategoryName
ORder by Units desc

--22.
select Country, City, count(CustomerID) as TotalCustomers from Customers
group by City, Country
Order by TotalCustomers desc

--23.
select ProductID, ProductName, UnitsInStock, ReorderLevel, UnitsOnOrder, Discontinued from Products 
Where (UnitsInStock + UnitsOnOrder) <= ReorderLevel 
AND Discontinued = 0
order by ProductID

--24: Case Statements

select CustomerID, CompanyName, Region,
CASE 
WHEN Region IS NULL 
THEN '1'
ELSE '0'
END Regiona
from Customers
Order by Regiona asc, Region, CustomerID

--OW_NUMBER() OVER (ORDER BY Aggregator)

--25.
select top 3 ShipCountry, AVG(Freight) as cost  from Orders  
Group by ShipCountry
order by cost desc

--26: 25 but only from the year 2015

select top 3 AVG(Freight) as cost, ShipCountry  from Orders
Where OrderDate between '2015-01-01' AND '2016-01-01'
Group by ShipCountry
Order by cost desc

--27: adjusting the inclusive between
select* from Orders
where ShipCountry in ('France')
AND
OrderDate between '2014-11-30' AND '2016-01-01'


--28
-- first try:
select top 3 ShipCountry, Avg(freight) as Cost from Orders
Group by ShipCountry
having max(OrderDate) > '2015-05-06'
Order by Cost desc
*/

select Top 3 AVG(Freight) as cost, ShipCountry from Orders
where Orderdate in 
	(
	select OrderDate From Orders
	Group by OrderDate
	having ((orderdate)) > '2015-05-06' 
	)
Group by ShipCountry
Order by cost desc
--dateadd(yy, -1, max(OrderDate))











