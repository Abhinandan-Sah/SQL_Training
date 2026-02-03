Begin
UPDATE tbl_department
SET DeptId=2 , DeptName='HR'
Where DeptId=2;
End

INSERT into tbl_department values(5, 'Physical', NULL);

Alter Table tbl_department add location varchar(50) default 'Punjab';

select * from tbl_department;

Insert into tbl_department (DeptId,DeptName) values (6, 'Analysis');


create procedure mypractice2
@DeptId int,
@DeptName varchar(50)
as
Begin
select * from tbl_department where DeptId=@DeptId;
End

exec mypractice2 1, 'cs';

