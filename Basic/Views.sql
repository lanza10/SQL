-- Vista = Tabla virtual basada en el resultado de una consulta
Select * From DimEmployee;

create view Production_Employee
as
select FirstName, LastName, EmployeeNationalIDAlternateKey, HireDate from DimEmployee
where Title Like '%Production%';

Select * from Production_Employee;

alter view Production_Employee
as select EmployeeKey, FirstName, LastName, EmployeeNationalIDAlternateKey, HireDate from DimEmployee
where Title Like '%Production%';

Drop view Production_Employee
-- La idea es crear la vista para consultas muy utilizadas y así poder acceder a ella mas eficientemente