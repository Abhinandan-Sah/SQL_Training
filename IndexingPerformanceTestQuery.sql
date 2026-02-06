/*Select * into perf_issure from Person.Person;

Select * from Person.Person;

insert into perf_issure
select * from Person.person;

drop table perf_issure;

select * from perf_issure;

--create view perf_issure_vw 
--as 
--Select * from perf_issure_vw;

select ROW_NUMBER() OVER (ORDER BY BusinessEntityID) AS RowNum, * 
FROM
perf_issure;
*/

GO
select
	so.name, 
	--ps.*,
	ps.used_page_count
	from sys.dm_db_partition_stats ps
inner join
	sysobjects so
on ps.object_id= so.id
where so.xtype = 'U'
ORDER BY used_page_count desc;

GO

USE AdventureWorks2022;
GO

DROP TABLE IF EXISTS dbo.SOH_Practice;
SELECT TOP (300000)
  SalesOrderID, CustomerID, OrderDate, SubTotal, TaxAmt, Freight, TotalDue
INTO dbo.SOH_Practice
FROM Sales.SalesOrderHeader
ORDER BY SalesOrderID;

-- Create a clustered index on SalesOrderID (common pattern)
-- This leaves our search columns (CustomerID, OrderDate) without a supporting index.
CREATE CLUSTERED INDEX CX_SOH_Practice_SalesOrderID
ON dbo.SOH_Practice(SalesOrderID);

GO
select * from dbo.SOH_Practice;
GO

