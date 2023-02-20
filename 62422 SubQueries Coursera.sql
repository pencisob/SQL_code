/* --Practice for subqueries

--select * from Customers- Key_CustomerID
--select * from Orders - Key_OrderID
--select * from OrderDetails - Key_OrderID
--select * from Products - Key_ProductID

--Goal: Get the Products ordered by Spanish Customers

Select ProductName from Products
Where ProductID in(
	Select ProductID from OrderDetails
	Where OrderID in ( 
		select OrderId from Orders
		Where CustomerID in (
			select CustomerID from Customers
			where Country ='Spain')
					)
				)
*/