use ORDER_STORE_DATA
CREATE TABLE ORDERS_table(
Order_Id int,
OrderDate Date ,
Region nchar(50),
Rep varchar(50),
Order_Item varchar(50),
Units smallint,
UnitCost decimal(10,2),
Total_Price decimal(10,2)
)
drop table ORDERS_table
select*from ORDERS_table
INSERT INTO ORDERS_table (order_id, orderdate, region, rep, order_item, units, UnitCost, Total_Price)
VALUE
(1,'6/01/2021', 'East', 'Aruna', 'Pencil', '95', '1.99', 189.05)
INSERT INTO ORDERS_table (order_id, orderdate, region, rep, order_item, units, UnitCost, Total_Price)
VALUES
(2,'01/23/2021', 'Central', 'Kivell', 'Eraser', '50', '19.99', 999.50)
INSERT INTO ORDERS_table (order_id, orderdate, region, rep, order_item, units, UnitCost, Total_Price)
VALUES
(3,'02/9/2021', 'Central', 'Ganesh',' ', '36', '4.99', 179.64),
(4,'02/26/2021', 'Central', 'Payal',' ', '27', '19.99', 539.73),
(5,'03/15/2021', 'West', 'Sorvino',' ', '56', '2.99', 167.44),
(6,'04/1/2021', 'East', 'Hitesh', 'Pencil', '60', '4.99', 299.40),
(7,'04/18/2021', 'Central', 'Akshita',' ', '75', '1.99', 149.25),
(8,'05/05/2021', 'Central', 'Ruchika', 'Books', '90', '4.99', 449.10),
(9,'05/22/2021', 'West', 'Surbhi',' ', '32', '1.99', 63.68),
(10,'06/8/2021', 'East', 'Jones', 'Suitcase', '60', '8.99', 539.40);


CREATE TABLE Stores_Table(
Store_Id INT PRIMARY KEY,
StoreType NCHAR(50),
Assortment SMALLINT,
CompetitionDistance DECIMAL(10,2),
Month INT,
Year INT,
PromoInterval VARCHAR(50)
)
SELECT*FROM Stores_Table
INSERT INTO Stores_Table(Store_Id,	StoreType,	Assortment,	CompetitionDistance,	Month,	Year,	PromoInterval)
VALUES
(1,	'c',	'29',	'1270',	'9',	'2008',	'JAN'),
(2,	'a','33',	'570',	'11',	'2007','FEB'),
(3,	'a',	'29',	'14130',	'12',	'2006',	'MAR'),
(4,	'c',	'41',	'620',	'9',	2009,''),	
(5,	'a',	'37',	'29910',	'4',	'2015',	'May'),
(6,	'a',	'43',	'310',	'12',	'2013',	'June'),
(7,	'a',	'23',	'24000',	'4',	2013,''),	
(8,	'a',	'21',	'7520',	'10',	'2014',	'Aug'),
(9,	'a',	'18',	'2030',	'8',	'2000',''),	
(10,	'a',	'11',	'3160',	'9',	'2009',	'Oct');
SELECT*FROM Stores_Table

ALTER TABLE STORES_TABLE
ADD Store_Names VARCHAR(50);






UPDATE Stores_Table
SET Store_Names='Car'
where store_id=1

UPDATE Stores_Table
SET Store_names='Bikes'
where store_id=2

update Stores_Table
SET Store_names='Hardware'
where store_id=3

UPDATE Stores_Table
SET Store_names='Electrics'
where Store_Id=4

UPDATE Stores_Table
SET Store_names='Fibers'
where Store_Id=5

UPDATE Stores_Table
SET Store_names='Elastics'
where Store_Id=6

UPDATE Stores_Table
SET Store_names='Books'
where Store_Id=7

UPDATE Stores_Table
SET Store_names='Shoes'
where Store_Id=8

UPDATE Stores_Table
SET Store_names='Clothes'
where Store_Id=9

UPDATE Stores_Table
SET Store_names='Scraps'
where Store_Id=10

SELECT*FROM Stores_Table

ALTER TABLE Stores_table
ADD FOREIGN KEY(Store_id)
REFERENCES Orders_table(Order_id)


select*from ORDERS_table
UPDATE ORDERS_table
SET Order_item='Compass'
where Order_id=3

UPDATE ORDERS_table
SET Order_item='Torch'
where Order_id=4

UPDATE ORDERS_table
SET Order_item='phone'
where Order_id=5

UPDATE ORDERS_table
SET Order_item='Laptop'
where Order_id=7

UPDATE ORDERS_table
SET Order_item='Box'
where Order_id=9


UPDATE Stores_Table
SET Promointerval='apr'
where Store_id=4
UPDATE Stores_Table
SET Promointerval='july'
where Store_Id=7

UPDATE Stores_Table
SET Promointerval='sep'
where Store_Id=9

SELECT*FROM STORES_TABLE
exec sp_rename 'stores_table.assortment','Store_Nos','COLUMN'

select*from ORDERS_table
exec sp_rename 'ORDERS_table.Order_item',' Item_name','COLUMN'
exec sp_rename 'orders_table.rep','Customers_Name','COLUMN'

SELECT*FROM ORDERS_table order by unitcost desc, total_price asc;

exec sp_rename 'orders_table.customers_name','Cus_name','COLUMN'

SELECT COUNT(Cus_name), region
FROM orders_table
GROUP BY region

SELECT SUM(UNITCOST)
FROM ORDERS_TABLE

SELECT SUM(TOTAL_PRICE)
FROM ORDERS_TABLE

SELECT*FROM Stores_Tableuse ORDER_STORE_DATA
select*from ORDERS_table
select*from Stores_Table


CREATE VIEW [Order_Store_Table] AS
SELECT OrderDate  , UnitCost  , StoreType, Year FROM  ORDERS_table AS OT
JOIN 
Stores_Table AS ST
ON 
OT.Order_Id = ST.Store_Id

SELECT * FROM Order_Store_Table

SELECT Region,[ Item_name] FROM ORDERS_table
WHERE Order_Id in ('4','5','6','9')

SELECT YEAR FROM Stores_Table
WHERE CompetitionDistance=29910

exec sp_rename 'stores_table.competitiondistance','CD','COLUMN'

select sum(CD)
FROM Stores_Table

SELECT*FROM Stores_Table

SELECT COUNT(Storetype),COUNT(CD)
from Stores_Table

SELECT ORDERS_TABLE.ORDER_ID,Stores_Table.STORE_ID
FROM ORDERS_table
CROSS JOIN Stores_Table;


