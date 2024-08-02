create table products (
	id int primary key,
	name varchar(70),
	price money
);
create table productsAux (
	id int primary key,
	name varchar(70),
	price money
);
insert into products (id, name, price)
select Productkey, EnglishProductname, StandardCost from DimProduct
Where StandardCost Is Not NULL;

declare 
	@id int,
	@name varchar(50),
	@price money;
declare
	cu_products cursor local static read_only --para cursores de tipo lectura (local para solo esta sesión de usuario)
	for select id, name, price from products;
open cu_products;
fetch next from cu_products into @id,@name, @price
while @@fetch_status = 0
	begin
		insert into productsAux values(@id, @name, @price);
		print str(@id) + ' ' + @name + str(@price);
		fetch next from cu_products into @id,@name,@price;
	end;
	close cu_products;
	deallocate cu_products;


select * from productsAux;


drop table products, productsAux;
