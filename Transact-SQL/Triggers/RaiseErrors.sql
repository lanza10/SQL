create table EmployeeKeys (id int);

insert into EmployeeKeys (id)
select EmployeeKey from DimEmployee;

select * from EmployeeKeys;

create or alter trigger t_delete_employeeKeys
on EmployeeKeys for delete
as 
  if(select COUNT(*) from deleted) > 2
  begin 
	raiserror('IS NOT ALLOWED TO DELETE MORE THAM TWO ROWS AT ONCE',16,1);
	rollback transaction;
  end;

create or alter trigger t_update_employeeKeys
on EmployeeKeys for update
as 
  if UPDATE(id)
  begin 
	raiserror('IS NOT ALLOWED TO UPDATE THE ID OF AN EMPLOYEE',16,1);
	rollback transaction;
  end;

create or alter trigger t_insert_employeeKeys
on EmployeeKeys for insert
as 
  if(select id from inserted) in (select * from EmployeeKeys)
  begin 
	raiserror('IS NOT ALLOWED TO INSERT AN EXISTING ID',16,1);
	rollback transaction;
  end;

delete from EmployeeKeys Where id < 5;
update EmployeeKeys set id = 288 Where id = 287;
insert into EmployeeKeys values(1);

drop trigger t_delete_employeeKeys, t_update_employeeKeys, t_insert_employeeKeys;
drop table EmployeeKeys;