Use AdventureWorks2017
Go

-- DISTINCT
--	Eliminate all the duplicate records and teching only unique records


SELECT DISTINCT PersonType, FirstName
FROM Person.Person




-- SELECT TOP CLAUSE
SELECT TOP 20 * FROM Person.Person



-- ******************* ORDER BY ASCENDING ORDER *******************
--		Used to sort the data in ascending or descending order
SELECT FirstName, MiddleName, LastName 
FROM Person.Person ORDER BY FirstName ASC



-- ******************* ORDER BY ASCENDING ORDER *******************

--		Used to sort the data in ascending or descending order
SELECT FirstName, MiddleName, LastName 
FROM Person.Person ORDER BY FirstName DESC


-- ******************* GROUP BY *******************
--		Used to arrange data into groups

SELECT Shelf,sum(Quantity), sum(Bin) as Bin
FROM Production.ProductInventory
GROUP BY Shelf ORDER BY Shelf

-- ******************* HAVING *******************
--		Specifies conditions that filter which group results appear int the final results
SELECT Shelf,sum(Quantity), sum(Bin) as Bin
FROM Production.ProductInventory
GROUP BY Shelf Having Shelf='A' ORDER BY Shelf

-- ADVANTAGE OF HAVING vs WHERE
SELECT Shelf, sum(Quantity), sum(Bin) as Bin
FROM Production.ProductInventory
GROUP BY Shelf Having sum(Quantity) > 10000 ORDER BY Shelf   -- HAVING CAN USE CONDITIONAL STATEMENT

-- USING WHERE 
SELECT Shelf,sum(Quantity), sum(Bin) as BIN
From Production.ProductInventory
Where Shelf = 'A'
GROUP BY Shelf