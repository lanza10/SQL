select * from DimProduct;

create or alter function f_product
(@name varchar(50))
returns table
with encryption
as 
return( select * from DimProduct Where EnglishProductName like '%'+@name+'%')

exec sp_helptext f_product;

select * from f_product('Road');

select * from f_product('Tube');

drop function f_product;