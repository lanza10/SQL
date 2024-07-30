Select * From DimEmployee;

Select COUNT(*) From DimEmployee;

Select AVG(distinct VacationHours) From DimEmployee;
Select AVG( VacationHours) From DimEmployee;

Select Top(10) SUM(SickLeaveHours) as "Total sick Hours" From DimEmployee

Select top(20) VacationHours From DimEmployee order by VacationHours desc;