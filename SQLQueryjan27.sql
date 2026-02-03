create table product(
	ID uniqueidentifier PRIMARY KEY default NEWID(),
	ProductName varchar(255)
);

insert into product (ProductName)  values ('Oreo');

select * from product;

select * from sysobjects;

select * from 
(select xtype, COUNT(xtype) as CountObject from sysObjects group by xtype) t1;


