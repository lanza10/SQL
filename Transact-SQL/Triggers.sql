-- Se usan en tablas o vistas y mantienen la integridad de los datos. No se invocan, se ejecutan de manera automática.
-- 4 TIPOS:
--				-After Insert		-After update		-After delete		-Instead of

create table test(
	id int null,
	name varchar(10),
	date date,
	amount numeric(3,2)
);

create table control(
	usuario varchar(30),
	fecha date,
	accion varchar(50)
);

create or alter trigger t_insert
on test
after insert
as 
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, GETDATE(), 'insert');
	end;

create or alter trigger t_update
on test
after update
as 
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, GETDATE(), 'update');
	end;

create or alter trigger t_delete
on test
after delete
as 
	begin
		declare @usuario varchar(30);
		set @usuario = SUSER_NAME();
		insert into control values(@usuario, GETDATE(), 'delete');
	end;

insert into test values(1, 'John', GETDATE(), 1.23);
update test set id = 2;
delete from test where id = 2;

select * from test;
select * from control;

drop table test, control;