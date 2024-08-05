create table ExEmployee (
	id int,
	firstName varchar(20),
	middleName varchar(20),
	lastName varchar(20),
	baseRate money,
	title varchar(60),
	phone varchar(20)
);

insert into ExEmployee(id, firstName, middleName, lastName, baseRate, title, phone)
select EmployeeKey, FirstName, MiddleName, LastName, BaseRate, Title, Phone from DimEmployee;

declare
	@idEmployee int,
	@newBaseRate money
declare 
	c_salary cursor for
	select id, baseRate from ExEmployee
	where title Like '%Marketing%'
open c_salary;
fetch next from c_salary into @idEmployee, @newBaseRate
while @@FETCH_STATUS = 0
	begin
		set @newBaseRate *= 1.10;
		update ExEmployee set baseRate = @newBaseRate
		where current of c_salary;
		fetch next from c_salary into @idEmployee, @newBaseRate
	end;
close c_salary;
deallocate c_salary;

select id, title, baseRate from ExEmployee where title Like '%Marketing%';
select EmployeeKey, Title, BaseRate from DimEmployee where title Like '%Marketing%';

drop table ExEmployee;