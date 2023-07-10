# Task 1
SELECT city, sname, snum, comm
FROM salespeople;

# Task 2
SELECT rating, cname AS "name"
FROM customers
WHERE
	city = "San Jose";

# Task 3
SELECT DISTINCT snum
FROM orders;

# Task 4
SELECT *
FROM customers
WHERE
	cname LIKE "G%";

# Task 5
SELECT *
FROM orders
WHERE
	amt > 1000;

# Task 6
SELECT MIN(amt)
FROM orders;

# Task 7
SELECT *
FROM customers
WHERE 
	rating > 100 
	AND 
	city != "Rome";