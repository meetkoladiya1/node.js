-- findout products which have been sold "Ivan Bayross"

select * from salesman_master1 sod
inner join product_master1 pm on sod.productno = pm.PRODUCTNO
inner join sales_order so on sod.orderno = so.orderno
inner join client_master1 cm on cm.name = "Ivan bayross";










use foreignkey;

desc sales_order_details;
desc client_master1;
desc product_master1;
desc sales_order;
desc salesman_master1;

select * from sales_order_details;
select * from client_master1; 
select * from product_master1; 
select * from sales_order; 
select * from salesman_master1; 

-- 1.Find out the products, which have been sold to 'Ivan Bayross'.
select cm.name, pm.descripion from sales_order_details sod
inner join product_master1 pm on sod.productNo = pm.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_master1 cm on so.clientno = cm.clientno
where cm.name = 'Ivan bayross';


-- 2.Find out the products and their quanities that will have to be delivered in the current month.
select so.delydate , sod.qtyoedered ,pm.descripion
 from sales_order_details sod
 inner join product_master1 pm on sod.productNo = pm.productNo
 inner join sales_order so on sod.orderNo = so.orderNo
 where month(so.delydate) = month(current_date()); 
 

-- 3.List the productNo and decription of constantly sold(i.e, rapidly moving) produts.
select pm.productNo , pm.descripion , pm.peorderlvl
from sales_order_details sod
inner join product_master1 pm on sod.productNo = pm. productNo
where pm.peorderlvl > 30;

-- 4.Find the name of clients who have purchased 'Trousers.
select cm.clientno, cm.name ,pm.descripion   
from client_master1 cm
inner join sales_order so on cm.clientno = so.clientno
inner join sales_order_details sod on  so.orderNo = sod.orderno
inner join product_master1 pm on  pm.descripion = 'Trousers';

-- 5.List the products and orders from customers who have ordered less than 5 unit of 'Pull Overs'.
select sod.qtyoedered  , pm.descripion , pm.productNo ,pm.qtyonhand , cm.clientno
from product_master1 pm 
inner join sales_order_details sod on pm.productNo =  sod.productNo
inner join sales_order so on sod.orderNo = so.orderNo
inner join client_master1 cm on so.clientno = cm.clientno
where pm.descripion = 'pull overs' &&  sod.qtyoedered <= 5;

-- 6.find the products and their quantities for the orders placed by 'Ivan Bayross' and 'Mamta muzumdar'.
select sod.orderno,cm.name , pm.qtyonhand , sod.qtyoedered
from  sales_order_details sod
inner join sales_order so on sod.orderNo = so.orderNo
inner join product_master1 pm on sod.productNo = pm.productNo
inner join client_master1 cm on  so.clientno = cm.clientno
where cm.name IN('Ivan Bayross','Mamta muzumdar');


-- 7.Find the products and their quantities for the orders places by ClientNo 'C0001' and 'C0002'.
select  cm.clientno ,so.orderno ,pm.QTYONHAND ,pm.DESCRIPION
from sales_order_details sod
inner join sales_order  so on sod.orderno = so.orderno
inner join product_master1 pm on pm.productno = sod.productno
inner join client_master1 cm on cm.clientno = so.clientno
where cm.clientno in ('c0001' ,'c0002');