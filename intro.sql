-- Using the bestbuy database:

-- Copy the following and paste into MySql Workbench

-- find all products
SELECT * FROM bestbuy.products;
-- find all products that cost $1400
SELECT * FROM bestbuy.products WHERE price = 1400;
-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products WHERE price = 11.99 OR price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products WHERE NOT price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products ORDER BY price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM bestbuy.employees WHERE MiddleInitial IS NULL;
-- find distinct product prices
SELECT DISTINCT price FROM bestbuy.products;
-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM bestbuy.employees WHERE FirstName LIKE "j%";
-- find all Macbooks
SELECT * FROM bestbuy.products WHERE Name LIKE "macbook";
-- find all products that are on sale
SELECT * FROM bestbuy.products WHERE OnSale = true;
-- find the average price of all products
SELECT avg(price) FROM bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM bestbuy.employees WHERE title = "Geek Squad" AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM bestbuy.products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY price; 