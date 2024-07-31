select * from DimEmployee;

--Con row number indentamos o establecemos un contador, que nos puede ser util , po ejemplo:
-- aquí obtenemos el empleado que mas gana aunque la tabla se actualice de una manera trasparente
select e.EmployeeKey, e.BaseRate from (
		select row_number() over (order by e.BaseRate desc) as contador,
		e.EmployeeKey, e.BaseRate from DimEmployee e) as e
		where contador = 1;

--Otra opción para el mismo caso es el firstValue
select * from DimEmployee e
where e.EmployeeKey =
			(select distinct 
			first_value(e.EmployeeKey) over (order by e.BaseRate desc) as Contador 
			from  DimEmployee e);