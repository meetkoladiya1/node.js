-- \sql 
--  \connect root@localhost:3306
-- show databases;

-- show tables;

create new table
create table client_master(
    ClientNo varchar(6),
    Name varchar(20),
    Address1 varchar(30),
    Address2 varchar(30),
    City varchar(15),
    Pincode int(8),
    State varchar(15),
    BalDue int(10)
);

insert into client_master values 
("C00001" , "Ivan Bayross" , "A/14" , "Worli" , "Mumbai" , 400054 , "Maharastra" , 15000),
("C00002" , "Mamta Muzumdar" , "65" , "Nariman" , "Madras" , 780001 , "Tamil Nadu" , 0),
("C00003" , "Chhaya Bankar" , "p-7" , "Bandra" , "Mumbai" , 400057 , "Maharastra" , 5000),
("C00004" , "Ashwini Joshi" , "A/5" , "Juhu" , "Bangalore" , 560001 , "Karnataka" , 0),
("C00005" , "Hansel Colaco" , "B-75" , "Nariman" , "Mumbai" , 400060 , "Maharastra" , 2000),
("C00006" , "Deepak Sharma" , "B/14" , "Worli" , "Mangalore" , 400054 , "Karnataka" , 0);




-- 1st table
create table client_master(
    clientNo varchar(7),
    Name varchar(11),
    Address1 varchar(11),
    Address2 varchar(11),
    City varchar(11),
    Pincode int,
    State varchar(11),
    BalDue int
);

insert client_master values
("C00001", "Ivan", "A/14", "Worli", "Mumbai", 400054, "Maharashtra", 15000),
("C00002", "Mamta", "65", "Nariman", "Madras", 780001, "Tamil Nadu", 0),
("C00003", "Chhaya", "p-7", "Bandra", "Mumbai", 400057, "Maharashtra", 5000),
("C00004", "Ashwini", "A/5", "Juhu", "Banglore", 560001, "Karnataka", 0),
("C00005", "Hansel", "65", "Nariman", "Mumbai", 400060, "Maharashtra", 2000),
("C00006", "Deepak", "p-7", "Bandra", "Bangalore", 560050, "Karnataka", 0);

-- 2nd table

create table product_master(
    ProductNo varchar(7),
    Description varchar(17),
    ProfitPercent int,
    UnitMeasure varchar(11),
    QtyOnHand int,
    ReorderLvl int,
    SellPrice int,
    CostPrice int
);

insert product_master values
("P00001","T-Shirts",5,"Piece",200, 50, 350, 250),
("P0345","Shirts",6,"Piece",150, 50, 500, 350),
("6P0734","Cotton Jeans",5,"Piece",100, 20, 600, 450),
("P07865","Jeans",5,"Piece",100, 20, 750, 500),
('P07868',"Trousers",2,"Piece",150, 50, 850, 550),
('P07885',"Pull Overs",2.5,"Piece",80, 30, 700, 450),
('P07965',"Denim Shirts",4,"Piece",100, 40, 350, 250),
('P07975',"Lycra Tops",5,"Piece",70, 30, 300, 175),
('P08865',"Skirts",5,"Piece",75, 30, 450, 300);


-- 3rd table

create table salesman_master(
    SalesmanNo varchar(7),
    Name varchar(11),
    Address1 varchar(11),
    Address2 varchar(11),
    City varchar(11),
    Pincode int,
    State varchar(11),
    SalAmt int,
    TgtToGet int,
    YtdSales int,
    Remarks varchar(5)
);

insert salesman_master values
("S00001", "Aman", "A/14", "Worli", "Mumbai", 400002, "Maharashtra", 3000, 100, 50, "Good"),
("S00001", "Omkar", "65", "Nariman", "Mumbai", 400001, "Maharashtra", 3000, 200, 100, "Good"),
("S00001", "Raj", "P-7", "Bandra", "Mumbai", 400032, "Maharashtra", 3000, 200, 100, "Good"),
("S00001", "Ashish", "A/5", "Juhu", "Mumbai", 400044, "Maharashtra", 3000, 200, 150, "Good");