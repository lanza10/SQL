select * from DimEmployee;

create or alter procedure p_searchEmployee
	@firstName varchar(30) = 'Kevin',
	@title varchar(50) = 'Marketing Assistant',
	@salesTerritoryKey int = 11
as 
	select * from DimEmployee
	where FirstName = @firstName
	and Title = @title and SalesTerritoryKey = @salesTerritoryKey;

exec p_searchEmployee;
drop proc p_searchEmployee;