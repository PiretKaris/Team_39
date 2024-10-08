
-- 1. Calculate total Sales by City

SELECT 
    Owners.City, SUM(Procedures.Price) AS TotalSales
FROM Sales 
JOIN 
    Procedures ON Sales.ProcedureCode = Procedures.ProcedureCode 
JOIN 
    Owners ON Pets.OwnerID = Owners.OwnerID
JOIN 
    Pets ON Pets.PetID = Sales.PetID
GROUP BY 
    Owners.City
ORDER BY 
    TotalSales DESC;

-- 2. Calculate total Sales by Pet Kind

SELECT 
    Pets.Kind, 
    SUM(Procedures.Price) AS TotalSales
FROM 
    Sales 
JOIN 
    Procedures ON Sales.ProcedureCode = Procedures.ProcedureCode 
JOIN 
    Pets ON Pets.PetID = Sales.PetID
GROUP BY 
    Pets.Kind
ORDER BY 
    TotalSales DESC;

--3. Calculate total Sales by City and Pet Kind

SELECT 
    Owners.City, 
    Sales.Country,
    Sales.PetID, 
    SUM(Procedures.Price) AS TotalSales
FROM 
    Sales
JOIN 
    Procedures ON Sales.ProcedureCode = Procedures.ProcedureCode 
JOIN 
    Pets ON Pets.PetID = Sales.PetID
JOIN
    Owners ON Owners.OwnerID = Pets.OwnerID  -- Assuming Pets table has OwnerID
GROUP BY 
    Owners.City, 
    Sales.Country,
    Sales.PetID;

--4. Calculate Average sales by City
SELECT 
    Owners.City, 
    AVG(Procedures.Price) AS AverageSales
FROM 
    Sales 
LEFT JOIN 
    Procedures ON Sales.ProcedureCode = Procedures.ProcedureCode
LEFT JOIN 
    Pets ON Sales.PetID = Pets.PetID
LEFT JOIN 
    Owners ON Owners.OwnerID = Pets.OwnerID
GROUP BY 
    Owners.City
ORDER BY 
    AverageSales DESC;

-- 5. If you have additional time, explore relationships with SQLight.

-- In SQLite, relationships between tables are managed via foreign keys, and we can explore these relationships through various queries. 
-- This allows to perform powerful analysis, such as aggregating data by different dimensions, finding trends, and identifying key insights from a dataset.

-- A foreign key is a column or set of columns in a table that establishes a link between data in two tables. 
-- It refers to the primary key in another table, which is called the referenced table or parent table.

-- A primary key is a column or set of columns in a table that uniquely identifies each row in that table. 
-- No two rows can have the same primary key value, and a primary key cannot contain NULL values.

