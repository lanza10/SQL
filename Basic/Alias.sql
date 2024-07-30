Select Top(10) 
EmployeeKey as 
ID, 
FirstName as NAME, 
Title as JOB 
From DimEmployee 

Select Top(10) FirstName + ' ' + LastName + ' ' + cast(EmployeeKey as varchar(2)) 
as "Employee view" From DimEmployee;
