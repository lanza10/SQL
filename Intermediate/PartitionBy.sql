create table ExEmployee(
 Id int,
 FirstName varchar(40),
 Phone nvarchar(20),
 VacationHours int,
 Title varchar(60)
);

insert into ExEmployee (Id, FirstName, Phone, VacationHours, Title)
select EmployeeKey, FirstName, Phone, VacationHours, Title from DimEmployee;

select * from ExEmployee;

--Allows to execute an operation in base a field
--For example, this calculate the avg of vacation hours for each title and shows it as a field for each row
select Id, FirstName, Title , VacationHours, 
avg(VacationHours) over(partition by Title) as "Avg Vacation Hours by Title"
from ExEmployee;
-- this calculate the sum of vacation hours for each title and shows it as a field for each row
select Id, FirstName, Title , VacationHours, 
sum(VacationHours) over(partition by Title) as "Sum Vacation Hours by Title"
from ExEmployee;

--this calculate the % of hours that each exEmployee have over the total of his title
select Id, FirstName, Title , VacationHours, 
 str(
	round(
        100 * VacationHours / 
		nullif(
			sum(VacationHours) over(partition by Title), 0
			),
		2)
	) + '%'
		as "% Vacation Hours by Title"
from ExEmployee;

drop table ExEmployee;
