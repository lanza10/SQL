--Recorren filas para traer resultados de forma secuencial
--�tiles para c�lculos complicados y l�gicas de negocio

--TIPOS:
--			-Solo lectura			-De actualizaci�n		-De inserci�n		-De combinaci�n
select * from DimProduct;
create table products (
	id int primary key,
	name varchar(70),
	price money
);
insert into products (id, name, price)
select Productkey, EnglishProductname, StandardCost from DimProduct
Where StandardCost Is Not NULL;

select * from products;

DECLARE @description money;

DECLARE prod_info CURSOR FOR
SELECT price FROM products;

OPEN prod_info;

FETCH NEXT FROM prod_info INTO @description;
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @description;
    FETCH NEXT FROM prod_info INTO @description;
END;

CLOSE prod_info;
DEALLOCATE prod_info;

drop table products;
