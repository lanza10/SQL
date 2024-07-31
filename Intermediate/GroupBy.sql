-- Group by: agrupa filas con los mismos valores

select * from DimEmployee;

select count(EmployeeKey) as Amount, Title 
from DimEmployee
group by Title order by count(EmployeeKey);

select max(EmployeeKey) as MaxId, Title 
from DimEmployee
group by Title order by count(EmployeeKey);

select min(EmployeeKey) as MinId, Title 
from DimEmployee
group by Title order by count(EmployeeKey);

select avg(EmployeeKey) as AverageId, Title 
from DimEmployee
group by Title order by count(EmployeeKey);

