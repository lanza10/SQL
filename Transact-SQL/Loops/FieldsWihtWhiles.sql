create table products (
	id int primary key,
	name varchar(70),
	price numeric
);
insert into products (id, name, price)
select Productkey, EnglishProductname, StandardCost from DimProduct;

select * from products;

create or alter procedure p_see_products
as
	declare 
		@count int = (select MAX(id) from products);
	while @count > 0
		begin
			select * from products where id = @count;
			set @count -=1;
		end;

exec p_see_products;

create or alter procedure p_discount
as
	declare @id int;
	select @id = min(id) from products;

	while @id > 0
		begin
			update products
			set price *= 0.9
			where id = @id and price is not null;

			select @id = MIN(id) from products
			where id > @id and price is not null;
		end;

exec p_discount;

drop proc p_see_products, p_discount;
drop table products;