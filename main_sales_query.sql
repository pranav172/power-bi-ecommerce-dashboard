SELECT
    h.SalesOrderID,
    h.OrderDate,
    h.CustomerID,
    p.Name AS ProductName,
    pc.Name AS ProductCategory,
    ps.Name AS ProductSubcategory,
    d.OrderQty,
    d.LineTotal
FROM
    Sales.SalesOrderHeader AS h
JOIN
    Sales.SalesOrderDetail AS d ON h.SalesOrderID = d.SalesOrderID
JOIN
    Production.Product AS p ON d.ProductID = p.ProductID
JOIN
    Production.ProductSubcategory AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN
    Production.ProductCategory AS pc ON ps.ProductCategoryID = pc.ProductCategoryID;