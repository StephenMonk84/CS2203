SELECT * FROM tblOrders 
WHERE CustomerID = 'MAGAA';

SELECT CustomerID, CompanyName, ContactName, ContactTitle 
From tblCustomers 
WHERE ContactTitle <> 'Sales Associate';

SELECT tblCustomers.CustomerID, tblCustomers.CompanyName, tblProducts.ProductID, tblProducts.ProductName, tblProducts.EnglishName 
FROM tblCustomers 
FULL OUTER JOIN tblOrders ON tblOrders.CustomerID = tblCustomers.CustomerID
FULL OUTER JOIN tblOrderDetails ON tblOrderDetails.OrderID = tblOrders.OrderID
FULL OUTER JOIN tblProducts ON tblOrderDetails.ProductID = tblProducts.ProductID
WHERE tblProducts.EnglishName LIKE '%chocolate%';

SELECT tblCustomers.CustomerID, tblCustomers.CompanyName, tblOrders.ShipCountry, tblProducts.ProductID, tblOrders.ProductName, tblOrders.EnglishName
FROM tblOrders
FULL OUTER JOIN tblOrderDetails ON tblProducts.ProductID = tblOrderDetails.ProductID
FULL OUTER JOIN tblOrders ON tblOrderDetails.OrderID = tblOrders.OrderID
FULL OUTER JOIN tblCustomers ON tblOrders.CustomerID = tblCustomers.CustomerID
WHERE tblCustomers.Country = 'Italy' OR tblCustomers.Country = 'USA';

SELECT tblOrders.OrderID, tblProducts.ProductID, tblProducts.ProductName, tblOrderDetails.UnitPrice, tblOrderDetails.Quantity, tblOrderDetails.Discount, 
TotalCost((tblOrderDetails.UnitPrice * tblOrderDetails.Quantity)-tblOrderDetails.Discount)
FROM tblOrders
FULL OUTER JOIN tblOrderDetails ON tblOrderDetails.OrderID = tblOrders.OrderID
FULL OUTER JOIN tblProducts ON tblOrderDetails.ProductID = tblProducts.ProductID

SELECT CategoryID, COUNT(*) AS TotalProducts 
FROM tblProducts
GROUP BY CategoryID
ORDER BY TotalProducts ASC;

SELECT Country, City, COUNT(*) AS TotalCustomers
FROM tblCustomers
GROUP BY CITY;

SELECT OrderID, OrderDate, RequiredDate, ShippedDate
FROM tblOrders
WHERE ShippedDate > RequiredDate;