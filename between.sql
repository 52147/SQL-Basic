-- Syntax
column_name BETWEEN value1 AND value2;
-- 1. With Numbers:

-- Suppose you have a products table and you want to find all products with a price between $10 and $50.
SELECT * FROM products WHERE price BETWEEN 10 AND 50;

-- 2. With Text:

-- To select all products with names between 'A' and 'K' (alphabetically):
SELECT * FROM products WHERE product_name BETWEEN 'A' AND 'K';

-- 3. With Dates:

-- If you want to retrieve orders made between January 1, 2020, and December 31, 2020:
SELECT * FROM orders WHERE order_date BETWEEN '2020-01-01' AND '2020-12-31';

-- 4. NOT BETWEEN:

-- If you want to filter results outside a specific range, you can use the NOT BETWEEN operator.

-- Example:

-- To select products outside the price range of $10 to $50:

SELECT * FROM products WHERE price NOT BETWEEN 10 AND 50;
