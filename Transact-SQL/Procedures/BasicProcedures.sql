--Conjunto de instrucciones que se guardan como objetos a fin de realizar tareas repetitivas
--TIPOS:    + sp_ (en Master)   + locales (del usuario)   + temporales (#)   + globales (##)
select * from DimProduct;

--Proc para obtener productos con coste menor que 6
create proc p_costProd
as 
select * from  DimProduct
where StandardCost < 6;

exec p_costProd;

drop proc p_costProd;

--Proc para actualizar los precios que sean menores que uno a uno
create procedure p_refresfCost
as 
begin 
if exists(select* from DimProduct
			where StandardCost < 1)
	update DimProduct set StandardCost = 1
	where StandardCost < 1
end;

exec p_refresfCost;

--Deshacemos
update DimProduct set StandardCost = 0.8973
where StandardCost = 1;

drop proc p_refresfCost;