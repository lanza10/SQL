create table ExEmployee(
 Id int,
 FirstName varchar(40),
 Phone nvarchar(20),
 BaseRate money
);

insert into ExEmployee (Id, FirstName, Phone, BaseRate)
select EmployeeKey, FirstName, Phone, BaseRate from DimEmployee;

select * from ExEmployee;

--Over() allows to show a calculated scalar field in all rows
select Id, FirstName, Phone, BaseRate,
sum(BaseRate) over() as SumRates 
from ExEmployee;

select Id, FirstName, Phone, BaseRate,
avg(BaseRate) over() as AvgRates 
from ExEmployee;

drop table ExEmployee;