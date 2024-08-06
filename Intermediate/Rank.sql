--Before using rank(), data have to be ordered using Order By

--rank() give a rank to each row according to the data order after the order by


-- this give you a field that indicates the position in the ranking by the order indicated inside the over(order by)
Select EmployeeKey, Firstname, Title, VacationHours,
rank() over(order by VacationHours desc) as Rank
from DimEmployee
order by Rank;

Select EmployeeKey, Firstname, Title, VacationHours,
rank() over(order by VacationHours asc) as Rank
from DimEmployee
order by Rank;