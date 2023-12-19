-- SQL Project By Saurabh Mulgaonkar

CREATE DATABASE sql_project;
USE sql_project;

-- Create Table Suppliers

CREATE TABLE suppliers(
id tinyint PRIMARY KEY,
supplier varchar(15)
) ;

-- Populating the Table suppliers

INSERT INTO suppliers
VALUES
(1,'ShockWave Tech'), -- mobiles, laptops 
(2,'CDW'), -- cables
(3,'Acme Tech'), -- software
(4,'CloudTail'), -- internet, router, wifi, hardware
(5,'Alpha Seller') ; -- stationery

SELECT * FROM suppliers;

-- Create table Products

CREATE TABLE products(
id smallint PRIMARY KEY,
ProductName varchar(50),
PartNumber varchar(50),
ProductLabel char(4),
StartingInventory int,
InventoryReceived int,
InventoryShipped int,
-- https://stackoverflow.com/questions/21784599/create-a-table-column-as-a-sum-of-two-columns-in-sql
-- InventoryOnHand column created as a combination of other columns
InventoryOnHand int AS (StartingInventory + InventoryReceived - InventoryShipped),
MinimumRequired int
);

-- Populating the Table Products

INSERT INTO products
(id,ProductName,PartNumber,ProductLabel,
StartingInventory,InventoryReceived,
InventoryShipped,MinimumRequired)
values
(101,'Dell Laptop','1024-7381','ELEC',0,10,2,5),
(102,'Dell Laptop','1031-9321','ELEC',2,5,2,5),
(103,'Dell Laptop','1045-5481','ELEC',2,5,2,5),
(104,'HP Laptop','7031-9487','ELEC',10,2,8,8),
(105,'HP Laptop','7031-8281','ELEC',5,5,8,6),
(106,'iPhone','8','ELEC',10,0,8,0),
(107,'iPhone','10','ELEC',5,5,4,1),
(108,'iPhone','15','ELEC',25,30,20,20),
(109,'Samsung Phone','A1','ELEC',5,10,5,5),
(110,'Samsung Phone','M1','ELEC',15,5,12,5),
(111,'Samsung Phone','F1','ELEC',30,50,60,10),
(112,'LAVA Phone','10X','ELEC',5,5,10,0),
(113,'LAVA Phone','20X','ELEC',5,10,2,5),
(114,'Ethernet Cable','5FT','CABL',5,10,8,2),
(115,'Ethernet Cable','10FT','CABL',10,20,20,7),
(116,'Ethernet Cable','20FT','CABL',10,40,30,8),
(117,'USB Cable','Type A','CABL',50,50,80,50),
(118,'USB Cable','Type B','CABL',10,10,15,5),
(119,'USB Cable','Type C','CABL',100,150,200,50),
(120,'Laptop Charging Cable','260V','CABL',10,15,20,10),
(121,'Laptop Charging Cable','240V','CABL',20,25,30,5),
(122,'Screen Recording Software Premium License','PR','SFTW',100,25,120,10),
(123,'Screen Recording Software Standard License','SD','SFTW',300,0,280,10),
(124,'MS Office Standard','947-127-XXXX','SFTW',800,100,850,100),
(125,'MS Office 365','547-291-XXXX','SFTW',500,50,400,100),
(126,'PowerBI Service','982-XXX','SFTW',100,50,100,50),
(127,'Tally Prime','543-XXX','SFTW',50,50,80,20),
(128,'Anaconda Premium','765-821-XXX','SFTW',80,47,100,10),
(129,'Adobe Reader','123-XXXX','SFTW',1000,100,1050,100),
(130,'Zomato Gold','111-XXX','SFTW',50,10,15,10),
(131,'BookMyTicket Premium','232-XXX','SFTW',5,10,1,10),
(132,'Swiggy Premium','9911-XXXX','SFTW',10,15,10,10),
(133,'Dlink Router','T54321','HDWR',40,15,30,5),
(134,'Dlink Router','D12345','HDWR',40,25,50,5),
(135,'Dlink Router','S78910','HDWR',40,80,20,15),
(136,'Set-top-box','C1','HDWR',10,40,30,10),
(137,'Set-top-box','D1','HDWR',20,50,40,20),
(138,'Set-top-box','C2','HDWR',41,20,35,20),
(139,'Set-top-box','D2','HDWR',50,30,60,20),
(140,'Set-top-box','E1','HDWR',10,10,10,10),
(141,'Set-top-box','E2','HDWR',13,26,26,5),
(142,'5G Router','J1','HDWR',100,20,100,20),
(143,'5G Router','J2','HDWR',200,200,350,20),
(144,'5G Router','J3','HDWR',300,30,200,50),
(145,'5G Router','J4','HDWR',400,20,410,5),
(146,'Pen','A1 Gel','STON',120,25,121,10),
(147,'Pen','A2 Gel','STON',120,25,120,10),
(148,'Pen','B1 Ball','STON',100,25,85,10),
(149,'Pen','B2 Ball','STON',100,25,65,10),
(150,'Pen','C1 Fountain','STON',50,15,25,10),
(151,'Pen','C2 Fountain','STON',50,25,35,10),
(152,'Pencil','H1','STON',80,10,70,10),
(153,'Pencil','H2','STON',80,20,80,10),
(154,'Pencil','H3','STON',80,30,55,10),
(155,'Pencil','H4','STON',80,20,60,10),
(156,'Erasor','non-dust','STON',50,25,75,10),
(157,'Erasor','long','STON',50,25,50,10),
(158,'Erasor','small','STON',50,25,55,10),
(159,'Scale','FC15','STON',20,85,100,10),
(160,'Scale','FC30','STON',10,55,35,10),
(161,'Rounder','FCH1','STON',10,5,5,5),
(162,'Rounder','FCH2','STON',10,5,5,5),
(163,'Rounder','FCH3','STON',10,5,5,5),
(164,'Rounder','FCH4','STON',10,5,5,5),
(165,'Sketchpen','YE','STON',50,20,20,10),
(166,'Sketchpen','BL','STON',50,20,30,10),
(167,'Sketchpen','OG','STON',50,20,15,10),
(168,'Sketchpen','RE','STON',50,20,35,10),
(169,'Sketchpen','GR','STON',50,20,30,10),
(170,'Sketchpen','PR','STON',50,20,20,10);

SELECT * FROM products;

-- Create Table Purchases

CREATE TABLE purchases(
id smallint PRIMARY KEY,
SupplierId tinyint,
ProductId smallint,
NumberReceived int,
PurchaseDate DATE,
FOREIGN KEY (SupplierId) REFERENCES suppliers(id),
FOREIGN KEY (ProductId) REFERENCES products(id));

-- Populating the table Purchases

INSERT INTO purchases
VALUES
(1, 1, 101, 10, '2023-01-01'),
(2, 1, 102, 5, '2023-02-11'),
(3, 1, 103, 5, '2023-02-21'),
(4, 1, 104, 2, '2023-02-13'),
(5, 1, 105, 5, '2023-03-15'),
(6, 1, 106, 0, '2023-05-17'),
(7, 1, 107, 5, '2023-07-27'),
(8, 1, 108, 30, '2023-07-15'),
(9, 1, 109, 10, '2023-08-23'),
(10, 1, 110, 5, '2023-08-17'),
(11, 1, 111, 50, '2023-10-11'),
(12, 1, 112, 5, '2023-10-05'),
(13, 1, 113, 10, '2023-12-01'),
(14, 2, 114, 10, '2023-01-01'),
(15, 2, 115, 20, '2023-02-11'),
(16, 2, 116, 40, '2023-03-21'),
(17, 2, 117, 50, '2023-04-11'),
(18, 2, 118, 10, '2023-05-15'),
(19, 2, 119, 150, '2023-06-16'),
(20, 2, 120, 15, '2023-08-18'),
(21, 2, 121, 25, '2023-09-21'),
(22, 3, 122, 25, '2023-01-19'),
(23, 3, 123, 0, '2023-02-13'),
(24, 3, 124, 100, '2023-03-21'),
(25, 3, 125, 50, '2023-04-11'),
(26, 3, 126, 50, '2023-05-02'),
(27, 3, 127, 50, '2023-05-04'),
(28, 3, 128, 47, '2023-06-06'),
(29, 3, 129, 100, '2023-06-10'),
(30, 3, 130, 10, '2023-07-11'),
(31, 3, 131, 10, '2023-08-12'),
(32, 3, 132, 10, '2023-09-14'),
(33, 4, 133, 15, '2023-01-11'),
(34, 4, 134, 25, '2023-02-12'),
(35, 4, 135, 80, '2023-03-15'),
(36, 4, 136, 40, '2023-04-17'),
(37, 4, 137, 50, '2023-05-11'),
(38, 4, 138, 20, '2023-06-12'),
(39, 4, 139, 30, '2023-07-05'),
(40, 4, 140, 10, '2023-07-05'),
(41, 4, 141, 26, '2023-07-14'),
(42, 4, 142, 20, '2023-08-19'),
(43, 4, 143, 200, '2023-09-02'),
(44, 4, 144, 30, '2023-11-21'),
(45, 4, 145, 20, '2023-11-23'),
(46, 5, 146, 25, '2023-01-15'),
(47, 5, 147, 25, '2023-01-16'),
(48, 5, 148, 25, '2023-02-14'),
(49, 5, 149, 25, '2023-02-15'),
(50, 5, 150, 15, '2023-03-14'),
(51, 5, 151, 25, '2023-04-02'),
(52, 5, 152, 10, '2023-05-13'),
(53, 5, 153, 20, '2023-06-18'),
(54, 5, 154, 30, '2023-06-19'),
(55, 5, 155, 20, '2023-07-20'),
(56, 5, 156, 25, '2023-07-21'),
(57, 5, 157, 25, '2023-08-23'),
(58, 5, 158, 25, '2023-08-25'),
(59, 5, 159, 85, '2023-09-28'),
(60, 5, 160, 55, '2023-09-28'),
(61, 5, 161, 5, '2023-09-30'),
(62, 5, 162, 5, '2023-10-31'),
(63, 5, 163, 5, '2023-10-31'),
(64, 5, 164, 5, '2023-11-29'),
(65, 5, 165, 20, '2023-11-29'),
(66, 5, 166, 20, '2023-12-01'),
(67, 5, 167, 20, '2023-12-05'),
(68, 5, 168, 20, '2023-12-07'),
(69, 5, 169, 20, '2023-12-21'),
(70, 5, 170, 20, '2023-12-25');

SELECT * FROM purchases;

-- Create Table Orders

CREATE TABLE orders(
id smallint PRIMARY KEY,
Title varchar(10),
First varchar(20),
Middle varchar(20),
Last varchar(20),
ProductId smallint,
NumberShipped int,
OrderDate DATE,
FOREIGN KEY (ProductID) REFERENCES products(id));

-- Populating the table Orders

INSERT INTO orders
VALUES
(1001, 'Mr.','Adam','E.','Copeland',101,1,'2023-02-03'),
(1002, 'Mr.','Bob',NULL,'Backland',101,1,'2023-05-02'),
(1003, 'Mr.','Charlie',NULL,'King',102,1,'2023-03-01'),
(1004, 'Mr.','Dave','B.','Robinson',103,2,'2023-06-04'),
(1005, 'Mr.','David','A.','Parker',106,1,'2023-03-01'),
(1006, 'Mr.','Daniel',NULL,'Bryan',106,1,'2023-03-11'),
(1007, 'Mr.','Eddy','B.','Graham',110,2,'2023-07-12'),
(1008, 'Mr.','Earl','F.','Gardner',112,2,'2023-01-21'),
(1009, 'Mr.','Elloit','A.','C.',114,4,'2023-03-12'),
(1010, 'Mr.','Fred','S.','D.',115,5,'2023-02-18'),
(1011, 'Mr.','Ford','A.','G.',117,10,'2023-06-16'),
(1012, 'Mr.','Aditya','A.','Arun',119,10,'2023-04-07'),
(1013, 'Mr.','Ajit','E.','S.',119,20,'2023-02-10'),
(1014, 'Mr.','Gaurav','C.','D.',120,1,'2023-03-16'),
(1015, 'Mr.','Garry','F.','Law',121,2,'2023-08-12'),
(1016, 'Mr.','Henry',NULL,'Fred',122,2,'2023-07-06'),
(1017, 'Mr.','Harry',NULL,'Oz',123,1,'2023-01-18'),
(1018, 'Mr.','Jake','P.','Perry',124,5,'2023-04-14'),
(1019, 'Mr.','Jack','M.','Matthew',125,2,'2023-02-03'),
(1020, 'Mr.','Kyle','F.','Fletcher',126,1,'2023-01-15'),
(1021, 'Mr.','Kenny','O.','Mega',127,1,'2023-02-23'),
(1022, 'Mr.','Kid','F.','Rock',129,1,'2023-03-21'),
(1023, 'Mr.','Lenny',NULL,'Show',130,1,'2023-04-16'),
(1024, 'Mrs.','Arianna',NULL,'M.',131,1,'2023-05-17'),
(1025, 'Mrs.','Betty',NULL,'Grant',132,1,'2023-08-11'),
(1026, 'Mrs.','Bree','J.','Bell',133,1,'2023-09-12'),
(1027, 'Mrs.','Chess','Q.','Lee',135,1,'2023-01-11'),
(1028, 'Mrs.','Claire',NULL,'Redfield',138,1,'2023-02-19'),
(1029, 'Mrs.','Veronica','E.','F.',142,10,'2023-03-05'),
(1030, 'Mr.','Max','A.','Caster',144,12,'2023-04-08'),
(1031, 'Mr.','Max','J.','Friedman',150,10,'2023-05-12'),
(1032, 'Mrs.','Nora','W.','Allen',152,10,'2023-06-17'),
(1033, 'Mr.','Pat',NULL,'Buck',153,10,'2023-07-09'),
(1034, 'Mr.','Jax','E.','Sol',155,10,'2023-08-10'),
(1035, 'Mr.','Dax','W.','Wheel',165,15,'2023-09-11'),
(1036, 'Miss','Jill',NULL,'Valentine',166,12,'2023-10-13'),
(1037, 'Mr.','Rain','A.','Jack',169,10,'2023-11-30'),
(1038, 'Mr.','Red','A.','Rain',101,1,'2023-12-31'),
(1039, 'Mr.','Zack',NULL,'Levi',170,1,'2023-02-15'),
(1040, 'Mr.','Zed',NULL,'Jack',162,5,'2023-03-11'),
(1041, 'Mr.','Adam','E.','Copeland',121,2,'2023-08-08'),
(1042, 'Mr.','Adam','E.','Copeland',138,3,'2023-08-08'),
(1043, 'Mr.','Bob',NULL,'Backland',111,2,'2023-05-07'),
(1044, 'Miss','Jill',NULL,'Valentine',141,5,'2023-11-11'),
(1045, 'Miss','A.',NULL,'Kapoor',149,5,'2023-12-12'),
(1046, 'Mrs.','B.',NULL,'Bhatt',147,2,'2023-02-14'),
(1047, 'Mr.','A.',NULL,'Cole',151,4,'2023-07-28');

SELECT * FROM orders;

-- Questions

-- 1) What is the total no of purchases made from each supplier?

SELECT s.supplier as Supplier, COUNT(pu.id) as Purchases
FROM purchases pu
INNER JOIN suppliers s ON
s.id = pu.SupplierId
GROUP BY s.id;

-- 2) What are the Product labels for each supplier?

SELECT s.supplier, p.ProductLabel
FROM suppliers s
INNER JOIN purchases pu
ON s.id = pu.SupplierId
INNER JOIN products p
ON p.id = pu.ProductId
GROUP BY s.id
ORDER BY s.id;

-- 3) What are the Total Numbers Received from purchases from each Supplier?

SELECT s.supplier, SUM(pu.NumberReceived) as Total_Received
FROM suppliers s
INNER JOIN purchases pu
ON s.id = pu.SupplierId
GROUP BY s.id
ORDER BY s.id;

-- 4) How many customer orders are there in 2023 ?

SELECT COUNT(o.id) as No_of_orders
FROM orders o
WHERE YEAR(o.OrderDate) = 2023;

-- 5) How many orders are there for Laptops in 2023?

SELECT COUNT(o.id) as No_of_Laptop_Orders_2023
FROM orders o
INNER JOIN products p ON
p.id = o.ProductId
WHERE YEAR(o.OrderDate) = 2023 AND
p.ProductName LIKE '%Laptop';

-- 6) What is the Total Inventory Shipped to Male customers in 2023?

SELECT SUM(NumberShipped) as Total_Inventory_Shipped
FROM orders
WHERE YEAR(OrderDate) = 2023 AND
Title ='Mr.';

-- 7) What are the Top product labels (categories) by no. of orders?

SELECT p.ProductLabel, COUNT(o.id) as No_of_orders
FROM products p
INNER JOIN orders o ON
p.id = o.ProductId
GROUP BY p.ProductLabel
ORDER BY No_of_orders DESC;

-- 8) Top 3 cutomers by Number of orders
SELECT CONCAT(Title,' ',First,' ',COALESCE(Middle,""),' ',Last) as Name,
COUNT(id) as No_of_orders
FROM orders
GROUP BY Name
ORDER BY No_of_orders DESC
LIMIT 3;

-- 9) How many males or females have given orders?

-- https://learnsql.com/blog/group-by-case-when/
SELECT 
	CASE 
		WHEN o.Title = 'Mr.' THEN 'Male'
		WHEN o.Title ='Mrs.' THEN 'Female'
		WHEN o.Title ='Miss' THEN 'Female'
		ELSE o.Title
    END as Gender,
COUNT(o.Title) as Count
FROM orders o
GROUP BY Gender;

-- 10) How many cases where InventoryOnHand < Minimum requirement?

SELECT COUNT(id) as Cases
FROM products
WHERE InventoryOnHAND < MinimumRequired;

-- 11) Top productnames for each product label by shipped quantity

SELECT ProductLabel, ProductName, SUM(InventoryShipped) as ShippedQuantity
FROM products
GROUP BY ProductLabel, ProductName
ORDER BY ProductLabel, ShippedQuantity DESC;

-- 12) Top 5 Product Names and PartNumbers by Inventory Shipped

SELECT p.ProductName, p.PartNumber, InventoryShipped
FROM products p
ORDER BY InventoryShipped DESC
LIMIT 5;

-- 13) Names of customers who have purchased pens 

SELECT CONCAT(o.Title,' ',o.First,' ',COALESCE(o.Middle,""),' ',o.Last) as Name
FROM orders o
INNER JOIN products p ON
o.ProductId = p.id
WHERE p.ProductName LIKE 'Pen'
ORDER BY o.Title;

-- 14) What are the total stationery items that were shipped?

SELECT ProductLabel, SUM(InventoryShipped) as Total
FROM products
WHERE ProductLabel ='STON';

-- 15) Names, productnames and partnumbers of customers 
-- who have ordered anything in December 2023.

SELECT CONCAT(o.Title,' ',o.First,' ',COALESCE(o.Middle,""),' ',o.Last) as Name,
p.ProductName, p.PartNumber
FROM orders o
INNER JOIN products p ON
o.ProductId = p.id
WHERE MONTH(OrderDate) = 12 AND
YEAR(OrderDate) = 2023
ORDER BY o.Title;

-- 16) Name of Software, Dates on which software was purchased from supplier

SELECT P.ProductName, pu.PurchaseDate
FROM purchases pu
INNER JOIN suppliers s
ON pu.SupplierId = s.id
INNER JOIN products p
ON p.id = pu.ProductId
WHERE ProductLabel ='SFTW';


 