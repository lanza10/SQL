create table control_prod(
	username varchar(20),
	date date,
	hour varchar(10),
	action varchar(50)
);
create table idProds(id int);

create or alter trigger t_blockinsert_products
on idProds
instead of insert
as 
  begin
	set nocount on 
	insert into control_prod values(
		suser_name(),
		getdate(),
		right(getdate(),8),
		'Tried to insert on idProds'
	);
	print 'You can´t insert data on idProds table';
   end;
select * from idProds;
select * from control_prod;
insert into idProds values(1);

--Quiero insertar y el trigger no me deja, pero tampoco quiero borrar el trigger para siempre
alter table idProds
disable trigger t_blockinsert_products;

insert into idProds values(1);
select * from idProds;
select * from control_prod;

--Una vez insertado lo deseado, lo volvemos a activar
alter table idProds
enable trigger t_blockinsert_products;

insert into idProds values(1);
select * from idProds;
select * from control_prod;

drop trigger t_blockinsert_products;
drop table idProds, control_prod;