-- Una subconsulta debe ir entre parentesis
-- Solo debe especificar una columna o expresión (a excepción de IN,ANY,ALL,EXISTS)
-- No puede contener between, Like, order by, update ni delete
Select * From DimEmployee;
Select * From DimSalesTerritory;

--Empleados cuyo salario base sea mayor a la media
Select EmployeeKey, FirstName, LastName, BaseRate From DimEmployee 
Where BaseRate >=
(Select AVG(BaseRate) From DimEmployee) ;

--Empleados cuyo departamento sea Marketing
Select EmployeeKey, FirstName, MiddleName, LastName From DimEmployee
where EmployeeKey = any
(Select EmployeeKey From DimEmployee Where DepartmentName = 'Marketing')

--Empleados cuyo territorio esté en Estados unidos
Select EmployeeKey, FirstName, LastName, SalesTerritoryKey From DimEmployee e
Where exists
(Select SalesTerritoryKey From DimSalesTerritory st
Where e.SalesTerritoryKey = st.SalesTerritoryKey and 
 SalesTerritoryCountry = 'United States')