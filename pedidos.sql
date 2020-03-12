drop database pedidos;

create database empresa;
use empresa;

CREATE database if not exists faculdade
CHARACTER set latin1
COLLATE latin1_swedish_ci;

CREATE TABLE customers(
customerNumber int primary key auto_increment,
customerName	varchar(50),
contactLastName varchar (50),
contactFirsttName varchar (50),
phone varchar(20),
addressLine1 varchar(20),
addressLine2 varchar(20),
city  varchar (50),
state varchar (50),
postalCode char(20),
country varchar(20),
salesRepEmployeeNumber varchar (30),
creditLimit float (50)
);

drop table orders;

CREATE TABLE orders(
orderNumber INT PRIMARY key auto_increment,
orderDate date,
requiredDate  date,
shippesDate date,
orderstatus  varchar(50),
comments varchar(100),
customerNumber int -- fk costumers 
);

-- colocando chave estrangeira da  customers para orders

ALTER TABLE orders ADD CONSTRAINT FK_orders
FOREIGN KEY orders(customerNumber) REFERENCES customers (CustomerNumber);



-- outra forma de colocar alterção de fk na tabela.
-- CREATE TABLE orders(
-- orderNumber INT PRIMARY key auto_increment,
-- orderDate date,
-- requiredDate  date,
-- shippesDate date,
-- orderstatus  varchar(50),
-- comments varchar(100),
-- customerNumber int,
-- FOREIGN KEY orders(customerNumber) REFERENCES customers(customerNumber)
-- );

select * from orders;
select * from customers;

-- tabela com primary key é feita primeiro pois é a mae, a fk é depois, pois depende da mãe.

-- sql padrão não usa CONSTRAINT, 

 





