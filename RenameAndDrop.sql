Select * From DimEmployee;
Select * From Employee;

exec sp_rename 'DimEmployee', 'Employee';
exec sp_rename 'Employee', 'DimEmployee';

Create Table prueba(
campo int); 

Select * From prueba;

drop table prueba;