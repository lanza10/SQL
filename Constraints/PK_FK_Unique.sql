CREATE TABLE ExEmployee(
	idExEmployee int primary key, -- Tambien: idExEmployee int, constraint PK_id_ExEmployee primary key(idExEmployee)
	nif varchar(10) null unique, -- Tambien: nif varchar(10), constraint UQ_ExEmployeeNif unique(nif) o alter table add
	nombre varchar(20) not null,
	idEmployee int
	constraint FK_ExEmployee_Employee foreign key references DimEmployee(EmployeeKey)
);

insert into ExEmployee values(1,null, 'John',1);

insert into ExEmployee values(2, '1234332A', 'John',2);

insert into ExEmployee values(3, '1234332A', 'Jack',3); --Error por UNIQUE

insert into ExEmployee values(1, null ,'Jack', 3); --Error por PK

delete from DimEmployee where EmployeeKey = 1; --Error por FK
insert into ExEmployee values(5, '2233','Jack', 0); --Error por FK

Select * From ExEmployee;

drop table ExEmployee;

SELECT * FROM DimEmployee;