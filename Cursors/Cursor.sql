--Recorren filas para traer resultados de forma secuencial
--Útiles para cálculos complicados y lógicas de negocio

--TIPOS:
--			-Solo lectura			-De actualización		-De inserción		-De combinación

create table products (
	id int primary key,
	name varchar(70),
	price numeric
);
insert into products (id, name, price)
select Productkey, EnglishProductname, StandardCost from DimProduct;

select * from products;

DECLARE @description NUMERIC;

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
