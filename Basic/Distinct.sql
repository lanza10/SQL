Create table MiddleNames (id int, firstName varchar(20), middleName char(20) null);

Insert into MiddleNames (id, firstName, middlename)
Select EmployeeKey, FirstName, MiddleName From DimEmployee;

Select * From MiddleNames;
Select distinct middleName From MiddleNames;

Select distinct firstName From MiddleNames
where middleName is null;

drop table MiddleNames;