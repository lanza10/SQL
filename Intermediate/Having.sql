-- Having: Realizar filtros a consultas cuando se usen otras func de agrupación
Select * from DimEmployee;

Select count(EmployeeKey) as Amount, Title
from DimEmployee group by Title
having count(EmployeeKey) > 5 And Title Not Like '%Technician%'
order by count(EmployeeKey);