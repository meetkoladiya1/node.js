show tables;
select * from customers;
select * from customers order by customerName desc, city asc;
select * from employees where employeeNumber>=1300 order by jobTitle desc, firstName asc; 
select * from employees where employeeNumber>=1300 || officeCode = 5;
select * from employees where !(officeCode != 5);

select * from customers where country = 'USA' || country = "France" || country = "poland";
select * from customers where country in ('France' , "Germany");
select * from customers where country not in ('France' , "Germany");
select * from customers where customerNumber between 140 and 199;
select * from customers where customerNumber not between 140 and 199;

select * from customers limit 10, 30;
select distinct country from customers;
select count(customerName) from customers;
select country, count(customerName) as "Total Member" from customers group by country;

select * from customers where customerName like "a%";
select * from customers where customerName like "%co";
select * from customers where customerName like "H%co";
select * from customers where customerName like "%Gifts%";
select * from customers where customerName like "__u%";
select * from customers where customerName like "%co";
select * from customers where country like "G______";
select * from customers where country like "_____e";









use foreignkey;


create table client_master1(
  clientNo varchar (6)  primary key,
  name varchar (20) not null,
  address1 varchar (30),
  address2 varchar (30),
  city varchar(15),
  pincode int (8),
  state varchar(15),
  baldue int (10)
);

 insert into client_master1 values
('C01' , 'meet' ,'33/A' , 'pasodara' , ' surat' ,395006 , 'gujarat',2000),

 insert into client_master1
 values('C02' , 'romil','44/A' , 'shaymdham' , ' surat' ,395005 , 'gujarat',3000),
('C03' , 'anirudh' ,'55/C' , 'savaliya circle' , 'surat' ,395007 , 'gujarat',7000),
  ('C04' , 'om' ,'66/B' , 'savaliya circle' , ' surat' ,395007 , 'gujarat',0),
  ('C05' , 'smit' ,'25/D' , 'nanavaracha' , 'surat' ,395004 , 'gujarat',0),
    ('C06' , 'vasu' ,'76/B' , 'motavarachha' , ' surat' ,560001 , 'gujarat',0);

   
-- table 2--------------------------------------------------------------------------------------------------------

 create table PRODUCT_MASTER1 (
   PRODUCTNO varchar (6) primary key ,
   DESCRIPTION varchar (15) not null,
   PROFITPERCENT int (4) not null,
   UNITMEASURE varchar (10) not null,
   QTYONHAND int(8) not null,
   REORDERLVL int (8) not null,
   SALLPRICE int (8) not null,
   COSTPRICE int (8) not null 
 );

 insert into PRODUCT_MASTER1
   values('P001' , 'T-shirts' , 5 ,'piece' , 200 , 50 ,350 , 250),
        ('P002','shirts',7,'piece' , 150,50,500,350), 
        ('P003','denim shirts',6,'piece' , 150,20,100,250), 
        ('P004','lycra tpo',5,'piece' , 150,20,700,450), 
       ('P005','Trousers',2,'piece' , 350,40,450,350), 
        ('P006','cotton jeans',2,'piece' , 150,30,350,220), 
        ('P007','skirts',4,'piece' , 250,60,200,800),
        ('P008','jeans',3,'piece' , 650,60,600,700),
        ('P009','pull overs',1,'piece' , 450,60,900,500);

 desc product_master1

-- table 3 ----------------------------------------------------------------------------------

 create table SALESMAN_MASTER1(
     SALESMANNO varchar(6) primary key,
     SALESMANNAME varchar(20) not null,
     ADDRESS1 varchar(30) not null,
     ADDRESS2 varchar(30),
     CITY varchar(15),
     PINCODE int(8),
     STATE varchar(15),
     SALAMT int(8) not null,
     TGTTOGET int (6) not null,
     YTDSALES int(6) not null,
     REMARKS varchar(60)
  );

 insert into SALESMAN_MASTER1
 values('S0001' , 'janvi' ,'14/E' , 'worli' , 'mumbai' ,400002 , 'maharashtra',2000 , 100 , 50 , 'Good'),
 ('S0002' , 'rajvi' ,'65' , 'jakatnaka' , ' surat' ,395006 , 'gujarat',2000,200 , 100 , 'Good'),
('S0003' , 'khanak' ,'33/A' , 'juhu' , ' mumbai' ,400004, 'maharashtra',2000 , 200 , 150, 'Good'),
('S0004' , 'palak' ,'3/A' , 'puna' , 'surat' ,395004, 'gujarat',2000 , 100 , 150, 'Good');

-- table 4--------------------------------------------------------------------------------

create table sales_order (
orderno varchar (6) primary key,
clientNo varchar (6),
foreign key (clientNo) references client_master1 (clientNo),
orderdate date not null,
salesmanNo varchar (6),
foreign key (salesmanNo) references SALESMAN_MASTER1 (SALESMANNO),
delytype char(1),
billyn char(1),
delydate date,
orderstatus varchar (10)
);

insert into sales_order 
values ('o00001','c01','2022-08-12' ,'s0001','F','N','20-04-02','inprocess'),
('o00002','c02','2023-02-22' ,'s0002','P','N','27-07-02','cancelled'),
('o00003','c03','2021-04-22' ,'s0004','F','Y','20-02-02','fulfilled'),
('o00004','c01','2020-03-12' ,'s0002','F','N','2017-03-25','fulfilled'),
('o00005','c03','2016-06-22' ,'s0004','F','Y','2019-05-02','cancelled'),
('o00006','c03','2021-01-13' ,'s0001','P','Y','2023-04-01','inprocess');

-- select * from sales_order

--  table 5

 create table order_details(
    orderNo varchar (6),
    foreign key (orderno) references sales_order (orderno),
    productNo varchar(6),
    foreign key (productNo) references product_master1 (productNo),
    qtyordered int(8),
    qtydisp int(8),
    productrate int(10)
 );
 
 -- desc order_details

insert into order_details
  values('o00001', 'p001' , 4 , 4 ,525),
  ('o00001','p002' , 2 ,1 , 8400),
  ('o00002','p003' , 2 ,1 , 5250),
  ('o00002','p004' , 10 ,0 , 525),
  ('o00003','p005' , 3 ,3 , 3150),
  ('o00003','p006' , 3 ,1 , 5250),
  ('o00004','p007' , 10 ,10 , 525),
  ('o00004','p008' , 4, 4,1050),
  ('o00005','p009' , 2 ,2, 1050),
  ('o00005','p002' , 1 ,1 , 12000),
  ('o00006','p004' , 1 ,0 , 8400),
  ('o00006','p007' , 1 ,0 , 1050),
  ('o00002','p008' , 10 ,5 , 525),
  ('o00004','p001' , 5,3, 1050);