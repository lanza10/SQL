select * from DimEmployee;

--with let you define a common query that will act like a temporal table
with EmployeeCTE as (
select EmployeeKey, FirstName, BaseRate, Title, Phone 
from DimEmployee)
select * from EmployeeCTE;

--its useful if you want to filter even more the data of this "temporal table"

--here whe thefine the query and later whe indicate the condition with where
with RankingEmployee as (
select EmployeeKey, FirstName, BaseRate, Title,
rank() over(order by BaseRate desc) as Rate_Ranking
from DimEmployee)
select * from RankingEmployee where Rate_Ranking <= 10
order by Rate_Ranking;
