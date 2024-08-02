create table control_prod(
	username varchar(20),
	date date,
	hour varchar(10),
	action varchar(50)
);
create table idProds(id int);

--Queremos impedir el insert y saber quien lo intenta
create or alter trigger t_blockinsert_products
on idProds
instead of insert
as 
  begin
	set nocount on --bloquear mensaje por consola (es opcional pero buena práctica)
	insert into control_prod values(
		suser_name(),
		getdate(),
		right(getdate(),8),
		'Tried to insert on idProds'
	);
	print 'You can´t insert data on idProds table';
   end;

--Queremos impedir el update y saber quien lo intenta
create or alter trigger t_blockupdate_products
on idProds
instead of update
as 
  begin
	set nocount on --bloquear mensaje por consola (es opcional pero buena práctica)
	insert into control_prod values(
		suser_name(),
		getdate(),
		right(getdate(),8),
		'Tried to update on idProds'
	);
	print 'You can´t update data on idProds table';
   end;

--Queremos impedir el delete y saber quien lo intenta
create or alter trigger t_blockdelete_products
on idProds
instead of delete
as 
  begin
	set nocount on --bloquear mensaje por consola (es opcional pero buena práctica)
	insert into control_prod values(
		suser_name(),
		getdate(),
		right(getdate(),8),
		'Tried to delete on idProds'
	);
	print 'You can´t delete data on idProds table';
   end;
insert into idProds values(1);
update idProds set id = 2;
delete from idProds Where id = 0;

select * from idProds;
select * from control_prod;

drop trigger t_blockdelete_products, t_blockupdate_products, t_blockinsert_products;
drop table idProds, control_prod;