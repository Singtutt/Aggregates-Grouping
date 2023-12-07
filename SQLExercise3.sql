USE northwind;
-- Page 71 --
-- 1 --
SELECT 
    COUNT(*) 
	AS 
		Suppliers
FROM
    suppliers;
-- 29 suppliers

-- 2 --
SELECT 
    SUM(Salary)
FROM
    employees;
-- 20362.93 (Rounded up to the nearest hundredth)

-- 3 --
SELECT 
    MIN(UnitPrice)
FROM
    products;
-- Geitost | $2.50

-- 4 --
SELECT 
    AVG(UnitPrice)
FROM
    products;
-- Average | $28.87 (Rounded to the nearest hundredth)

-- 5 --
SELECT 
    MAX(UnitPrice)
FROM
    products;
-- Cte de Blaye | $263.50

-- 6 --
SELECT 
    SupplierID, 
    COUNT(*) AS NumberOfItems
FROM
    Products
GROUP BY 
	SupplierID;

-- 7 --
SELECT 
	DISTINCT 
		CategoryId,
        AVG(UnitPrice) AS AverageCategoryPrice
FROM
	products
GROUP BY
	CategoryID;

-- 8 --
SELECT
	SupplierID,
    COUNT(*) AS ItemsSupplied
FROM 
	products
GROUP BY 
	SupplierID
HAVING
	COUNT(*) >= 5;
    
-- 9 --
SELECT
    ProductID,
    ProductName,
    ROUND((UnitPrice * UnitsInStock), 2) AS InventoryValue
FROM
    products
ORDER BY InventoryValue DESC, ProductName;