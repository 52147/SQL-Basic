-- Using WHERE:
-- Let's say you have a Sales table and you want to see the sales entries where the sale amount is greater than 100.
SELECT SaleID, SaleAmount
FROM Sales
WHERE SaleAmount > 100;


-- Using HAVING:
-- If you want to see departments that have total sales greater than 1000.
SELECT Department, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY Department
HAVING SUM(SaleAmount) > 1000;

-- Using WHERE with HAVING:
SELECT Department, SUM(SaleAmount) AS TotalSales
FROM Sales
WHERE SaleDate > '2022-01-01'
GROUP BY Department
HAVING SUM(SaleAmount) > 1000;


-- Key Points:
-- If you're using GROUP BY and you want to filter based on an aggregate function, you'll likely use HAVING.
-- If you're filtering based on individual row data or column values, you'll use WHERE.
-- It's possible to use both WHERE and HAVING in the same query. The WHERE clause will first filter individual rows, then the data will be grouped, and finally, the HAVING clause will filter the grouped data.