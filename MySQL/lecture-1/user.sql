-- list all clients who are located at Mumbai
select * from CLIENT_MASTER where city = 'mumbai';

select NAME from SALESMAN_MASTER where SALAMT = 3000;


-- update data
update CLIENT_MASTER set city = 'Bangalore' where clientno = "C00005";

-- delete data
delete from CLIENT_MASTER where clientno = "C0005";


-- drop statement
drop table CLIENT_MASTER;



-- 3--a
 select name from client_master;

--  3--b
 select * from CLIENT_MASTER

--  3--c
select NAME,CITY,STATE from CLIENT_MASTER;

-- 3--d
select DESCRIPTION from PRODUCT_MASTER;

-- 3--e

select * from CLIENT_MASTER where CITY = 'mumbai';

--  3--f
select NAME from SALESMAN_MASTER where SALAMT=3000;
update salesman_master set SALAMT = 3000 where 
SALESMANNO = 's0001';

--  4--a

update  CLIENT_MASTER set CITY='bangalore' where CLIENTNo ='c05';

-- 4--b
update CLIENT_MASTER set BalDue = 1000 where clientno = 'C00001';

-- 4--c
update PRODUCT_master set CostPrice = 950 where Description = "Trousers";

-- 4--d
update SALESMAN_master set CITY = "pune";
