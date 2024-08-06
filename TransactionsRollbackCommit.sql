-- rollback dismisses the last transaction
-- commit confirm the last transaction
create table ExEmployee(
 Id int,
 FirstName varchar(40),
 Phone nvarchar(20),
 BaseRate money
);

insert into ExEmployee (Id, FirstName, Phone, BaseRate)
select EmployeeKey, FirstName, Phone, BaseRate from DimEmployee;

--Here we will raise the baseRate a 50% and if its avg is bigger than 25 all will get their initial value
-- if is not bigger it will commit transaction
begin transaction;
	
update ExEmployee set BaseRate *= 1.1; --1,1: commit / 1,5: rollback

if(select AVG(BaseRate) from ExEmployee) > 25

	begin 
		rollback transaction;
		print 'Execution reverted, average of BaseRates too high';
	end;
else 
	begin 
		commit transaction;
		print 'BaseRate incremented';
	end;



select * from ExEmployee;
drop table ExEmployee;
