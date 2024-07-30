-- Index se usa para mejorar el rendimiento de las consultas
-- 2 tipos: -Clustered: definen el orden de los datos 
--			-Nonclustered: no lo definen
Create table ExEmployee (id int not null, firstName varchar(20), lastName varchar(20));
Select * From ExEmployee;

INSERT INTO ExEmployee (id, firstName, lastName)
SELECT EmployeeKey, FirstName, LastName
FROM DimEmployee;

create clustered index I_idemployee
on ExEmployee (id);

create nonclustered index I_fistname_employee
on ExEmployee(firstName)

exec sp_rename 'ExEmployee.I_idemployee', 'I_id', 'INDEX';
drop index I_id on ExEmployee;
drop table ExEmployee;