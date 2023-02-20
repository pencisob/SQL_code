/*
Select sum(UnitsinStock) as Tot_units ,categories.CategoryName as Category from Products
LEFT JOIN
Categories ON
products.CategoryID = Categories.CategoryID
group by categories.CategoryName
order by Tot_units desc

select count(Discontinued) as Dis_units, categories.CategoryName as Category from Products
LEFT JOIN
Categories ON
products.CategoryID = Categories.CategoryID
group by categories.CategoryName
order by Dis_units desc
*/

select (SUM((UnitPrice* Quantity)/Count(Quantity)) as X, ProductID from OrderDetails
group by ProductID
order by X desc