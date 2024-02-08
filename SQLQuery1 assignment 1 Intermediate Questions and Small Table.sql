use PRODUCT
select*from PRODUCT_table
select SUM(grosssales) from PRODUCT_table
--688211.00
select SUM(Sales) from PRODUCT_table
--715411.00
select year from PRODUCT_table
WHERE sales=(select max(sales) from PRODUCT_table)
--2019
SELECT product from PRODUCT_table
where sales=37050
--carretera
select Country from PRODUCT_table
WHERE PROFIT BETWEEN 4605 AND 22662;
--Canada,Germany,France,Mexico,Germany,Canada
SELECT Product_Id  FROM PRODUCT_table
where sales=24700
--null
use BRAND
select*from ITEMS_table
select item_description from ITEMS_table
where bottle_size=750
---Travis Hasse Apple Pie,Daristi Xtabentun,Oak Cross Whisky,Heaven Hill Old Style White Label,Hyde Herbal Liqueur,Dupont Calvados Fine Reserve
select vendor_name from ITEMS_table
where vendor_nos in(305,380,391)
--Mhw Ltd,Anchor Distilling (preiss Imports),Mhw Ltd,Phillips Beverage Company
select sum(bottle_size) as total from ITEMS_table
--total= 5700

SELECT ITEM_id from ITEMS_table
where bottle_price=5.06;
--item_id=7







