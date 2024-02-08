create database BRAND;
CREATE DATABASE PRODUCT;
use BRAND
create table ITEMS_table(
Item_Id INT PRIMARY KEY,
item_description VARCHAR (200),
vendor_nos INT,
vendor_name VARCHAR(100),
bottle_size INT,
bottle_price decimal(10,2)
)
drop table ITEMS_table;

SELECT*FROM ITEMS_table
INSERT INTO ITEMS_table (Item_Id, item_description, vendor_nos, vendor_name, bottle_size, bottle_price)
VALUES
(1,'Travis Hasse Apple Pie', '305', 'Mhw Ltd', '750', '9.77'),
(2,'Daristi Xtabentun', '391', 'Anchor Distilling (preiss Imports)', '750', '14.12'),
(3,'Hiram Walker Peach Brandy',	'370', 'Pernod Ricard Usa/austin Nichols', '1000',	'6.50'),
(4,'Oak Cross Whisky', '305', 'Mhw Ltd', '750', '25.33'),
(5,'Uv Red(cherry) Vodka', '380', 'Phillips Beverage Company', '200', '1.97'),
(6,'Heaven Hill Old Style White Label',	'259',	'Heaven Hill Distilleries Inc.', '750',	'6.37'),
(7,'Hyde Herbal Liqueur', '194', 'Fire Tail Brands Llc', '750',	'5.06'), 
(8,'Dupont Calvados Fine Reserve', '403', 'Robert Kacher Selections', '750', '23.61');
use PRODUCT
create table PRODUCT_table(
Product_Id INT PRIMARY KEY,
Country NVARCHAR(100),
Product VARCHAR(50),
UnitsSold DECIMAL (10,2),
ManufacturingPrice DECIMAL (10,2),
SalePrice DECIMAL(10,2),
GrossSales DECIMAL(10,2),
Sales DECIMAL(10,2),
COGS DECIMAL(10,2),
Profit DECIMAL(10,2),
Date DATE,
MonthNumber INT,
MonthName VARCHAR(50),
Year INT,
)
SELECT*FROM PRODUCT_table
INSERT INTO PRODUCT_table(Product_Id, Country, Product, UnitsSold, ManufacturingPrice, SalePrice, GrossSales, Sales, COGS, Profit, Date, MonthNumber, MonthName, Year)
VALUES
(1,'Canada','Carretera','1618.5','3.00','20.00','32370.00','32370.00','16185.00','16185.00','1/1/2014','1','January','2014'),
(2,'Germany','Carretera','1321','3.00','20.00','26420.00','26420.00','13210.00','13210.00','1/1/2014','1','January','2015'),
(3,'France','Carretera','2178','3.00','15.00','32670.00','32670.00','21780.00','10890.00','6/1/2014','6','June','2016'),
(4,'Germany','Carretera','888','3.00','15.00','13320.00','13320.00','8880.00','4440.00','6/1/2014','6','June','2017')
INSERT INTO PRODUCT_table(Product_Id, Country, Product, UnitsSold, ManufacturingPrice, SalePrice, GrossSales, Sales, COGS, Profit, Date, MonthNumber, MonthName, Year)
VALUES
(5,'Mexico','Carretera','2470','3.00','15.00','37050.00','37050.00','24700.00','12350.00','6/1/2014','6','June','2018'),
(6,'Germany','Carretera','1513','3.00','350.00','529550.00','529550.00','393380.00','136170.00','12/1/2014','12','December','2019'),
(7,'Germany','Montana','921','5.00','15.00','13815.00','13815.00','9210.00','4605.00','3/1/2014','3','March','2020'),
(8,'Canada','Montana','2518','5.00','12.00','3016.00','30216.00','7554.00','22662.00','6/1/2014','6','June','2021')
SELECT*FROM PRODUCT_table
DELETE FROM PRODUCT_table
WHERE Product_Id=(1,4,5);
drop table PRODUCT_table
--creating again
create table PRODUCT_table(
Product_Id INT PRIMARY KEY,
Country NVARCHAR(100),
Product VARCHAR(50),
UnitsSold DECIMAL (10,2),
ManufacturingPrice DECIMAL (10,2),
SalePrice DECIMAL(10,2),
GrossSales DECIMAL(10,2),
Sales DECIMAL(10,2),
COGS DECIMAL(10,2),
Profit DECIMAL(10,2),
Date DATE,
MonthNumber INT,
MonthName VARCHAR(50),
Year INT,
)

INSERT INTO PRODUCT_table(Product_Id, Country, Product, UnitsSold, ManufacturingPrice, SalePrice, GrossSales, Sales, COGS, Profit, Date, MonthNumber, MonthName, Year)
VALUES
(1,'Canada','Carretera','1618.5','3.00','20.00','32370.00','32370.00','16185.00','16185.00','1/1/2014','1','January','2014'),
(2,'Germany','Carretera','1321','3.00','20.00','26420.00','26420.00','13210.00','13210.00','1/1/2014','1','January','2015'),
(3,'France','Carretera','2178','3.00','15.00','32670.00','32670.00','21780.00','10890.00','6/1/2014','6','June','2016'),
(4,'Germany','Carretera','888','3.00','15.00','13320.00','13320.00','8880.00','4440.00','6/1/2014','6','June','2017'),
(5,'Mexico','Carretera','2470','3.00','15.00','37050.00','37050.00','24700.00','12350.00','6/1/2014','6','June','2018'),
(6,'Germany','Carretera','1513','3.00','350.00','529550.00','529550.00','393380.00','136170.00','12/1/2014','12','December','2019'),
(7,'Germany','Montana','921','5.00','15.00','13815.00','13815.00','9210.00','4605.00','3/1/2014','3','March','2020'),
(8,'Canada','Montana','2518','5.00','12.00','3016.00','30216.00','7554.00','22662.00','6/1/2014','6','June','2021')
select*from PRODUCT_table












)