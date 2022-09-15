-- Comments in SQL Start with dash-dash --
INSERT INTO products (name,price,can_be_returned) VALUES ('chair',44.00,false)
--Add Chair--
INSERT INTO products (name, price,can_be_returned) VALUES('stool',25.99,true)
--Add Stool--
INSERT INTO products (name, price, can_be_returned) VALUES('table',124.00,false)
--Add Table--
SELECT * FROM products
--Select all rows and columns--
SELECT name FROM products
--Display all names--
SELECT name, price FROM products
--Display names and prices --
INSERT INTO products (name,price,can_be_returned) VALUES ('hammock',38.75,false)
--Add own product--
SELECT * from products WHERE can_be_returned
--show can be returned products--
SELECT * from products WHERE price<44.00
--show products <44--
SELECT * from products where price>22.50 AND price <99.99
--Show products between 22.5 and 99.99 --
UPDATE products SET price=price-20
--discount everything by 20--
DELETE FROM products WHERE price<25
--Remove everything under 25--
UPDATE products SET price=price+20
--price back up by 20--
UPDATE products SET can_be_returned=true
--everything can be returned--