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