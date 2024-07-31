Select * From DimEmployee;
Select * From DimSalesTerritory;

Select EmployeeKey, FirstName, BaseRate,
case 
	when BaseRate < 10 then 'Needs a raise'
	when BaseRate > 40 then 'Needs a downgrade'
	else 'Review Performance'
	end as State
From DimEmployee

Select EmployeeKey, FirstName,
case 
	when st.SalesTerritoryGroup = 'North America' then 1
	when st.SalesTerritoryGroup = 'Europe' then 2
	else 3
	end as TerritoryClasification
From DimEmployee e
inner join DimSalesTerritory st on e.SalesTerritoryKey = st.SalesTerritoryKey
order by TerritoryClasification asc;