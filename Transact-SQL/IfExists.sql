select * from DimProduct;

if exists (select * from DimProduct where StandardCost IS NULL)
	(select EnglishProductName, FinishedGoodsFlag From DimProduct where StandardCost IS NULL)
else 
	select 'Whe know the standard cost of every product' as Result;
	
update DimProduct set StandardCost = -1
where StandardCost IS NULL;

if exists (select * from DimProduct where StandardCost IS NULL)
	(select EnglishProductName, FinishedGoodsFlag From DimProduct where StandardCost IS NULL)
else 
	select 'Whe know the standard cost of every product' as Result;

update DimProduct set StandardCost = NULL
where StandardCost = -1;