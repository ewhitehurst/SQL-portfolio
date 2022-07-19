--Created a store database with a list of items needed, quantity, and what aisle they are located.

CREATE DATABASE store;
USE store;
CREATE TABLE groceries (id INT PRIMARY KEY);
ALTER TABLE groceries ADD (name VARCHAR(25),
quantity INT, aisle INT);
ALTER TABLE groceries ADD price INT; 

INSERT INTO groceries VALUES (1, 'apples', 3, 1, .89);
INSERT INTO groceries VALUES (2, 'bananas', 5, 1, 2.62);
INSERT INTO groceries VALUES (3, 'cheese', 2, 4, 1.75);
INSERT INTO groceries VALUES (4, 'waffles', 4, 12, 2.02);
INSERT INTO groceries VALUES (5, 'dogfood', 1, 9, 35.75);
INSERT INTO groceries VALUES (6, 'water', 7, 7, 8.31);

--Decided to put the list in order by aisle so it easier to navigate through the store.

SELECT *
FROM groceries
ORDER BY aisle;

--I wanted to know how many items I needed total on my list to make sure I got everything before I checked out. 
--I needed a total of 22 items

SELECT SUM(quantity) 
FROM groceries;

-- I also wanted to know how many items I needed on each aisle.

SELECT aisle, SUM(quantity)
FROM groceries
GROUP BY aisle
ORDER BY aisle;



