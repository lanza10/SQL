Create table ExEmployee(
	id int identity (100,10), 
	name varchar(20) default 'Desconocido',
	age int not null,
	check (age >= 18 AND age <= 68)
);

insert into ExEmployee values(default,16); -- Error check
insert into ExEmployee values(default,25); 
insert into ExEmployee values(default,30);
insert into ExEmployee values(default,69); -- Error check

select ident_seed('ExEmployee'); --Valor de comienzo de la identity(100)

select ident_incr('ExEmployee'); --Valor de aumento de la identity(10)

set identity_insert ExEmployee on; --Desactiva la identity

Select * From ExEmployee;
Drop table ExEmployee;