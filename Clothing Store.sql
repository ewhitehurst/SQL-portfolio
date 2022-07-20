--Created a clothing store database with a clothing table showing 7 different items which includes the size, color, and price of each item.

CREATE DATABASE clothing_store;
USE clothing_store;

CREATE TABLE clothing (ID INT PRIMARY KEY,
ITEM VARCHAR (100),
SIZE VARCHAR (100),
COLOR VARCHAR (100),
PRICE INT);

INSERT INTO clothing VALUES (1, 'shirts', 'S', 'white', '5.00');
INSERT INTO clothing VALUES (2, 'shorts', 'XL', 'navy', '7.00');
INSERT INTO clothing VALUES (3, 'pants', 'M', 'tan', '9.00'); 
INSERT INTO clothing VALUES (4, 'dresses', 'S', 'yellow', '10.00');
INSERT INTO clothing VALUES (5, 'swimsuits', 'L', 'black', '7.00');
INSERT INTO clothing VALUES (6, 'hats', 'S', 'red', '4.00');
INSERT INTO clothing VALUES (7, 'shoes', 'L', 'black', '15.00');

SELECT *
FROM clothing
ORDER BY price;

--What is the highest, lowest, and average price of the items?
--The lowest priced item is $4, the highest priced is $15, and the average price is $8.14.

SELECT MIN(price)
FROM clothing;

SELECT MAX(price)
From clothing;

SELECT AVG(price)
FROM clothing;





 



