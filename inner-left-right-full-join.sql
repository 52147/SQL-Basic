-- 1. INNER JOIN: Join on CustomerID:
-- Only matching rows based on CustomerID are returned.

SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- 2. LEFT JOIN:
-- All rows from the left (Customers) table and matching rows from the right (Orders) table are returned. No matching order for Alice Lee, so Product shows NULL.

SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- 3. RIGHT JOIN:
-- All rows from the right (Orders) table and matching rows from the left (Customers) table are returned. No customer for the order with Product 'Keyboard', so CustomerName shows NULL.

SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- 4. FULL JOIN:
-- All rows from both tables are returned, combining the results of LEFT JOIN and RIGHT JOIN. Non-matching rows show NULL for columns from the table where there isn't a match.

SELECT Customers.CustomerName, Orders.Product
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


