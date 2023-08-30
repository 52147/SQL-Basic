-- Syntax
ROUND(number, decimal_places)

-- a. Rounding to 2 decimal places:

SELECT ROUND(123.4567, 2);  -- Result: 123.46
-- b. Rounding without any decimal places:

SELECT ROUND(123.4567, 0);  -- Result: 123
-- c. Rounding off to the left of the decimal point:

SELECT ROUND(123.4567, -2); -- Result: 100
