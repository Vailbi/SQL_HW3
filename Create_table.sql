USE Homework_3;
CREATE TABLE salespeople
(
	snum INT PRIMARY KEY AUTO_INCREMENT,
	sname VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	comm DECIMAL(3, 2) NOT NULL
);

CREATE TABLE customers
(
	cnum INT PRIMARY KEY AUTO_INCREMENT,
	cname VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	rating INT NOT NULL,
	snum INT NOT NULL,
	FOREIGN KEY (snum) 
		REFERENCES salespeople(snum)
		ON DELETE CASCADE
);

CREATE TABLE orders
(
	onum INT PRIMARY KEY AUTO_INCREMENT,
	amt DECIMAL(7, 2) NOT NULL,
	odate DATE NOT NULL,
	cnum INT NOT NULL,
	snum INT NOT NULL,
	FOREIGN KEY (cnum)
		REFERENCES customers(cnum)
		ON DELETE CASCADE,
	FOREIGN KEY (snum)
		REFERENCES salespeople(snum)
		ON DELETE CASCADE
);