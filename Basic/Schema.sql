Create Schema Employee;

Create table Employee.Names(
id int primary key identity,
firstName varchar(20),
middleName varchar(20),
lastName varchar(20)
);

Create table Employee.Data(
id int identity
foreign key references Employee.Names (id),
phone varchar(20),
birthDate date
);

insert into Employee.Names(firstName, middleName, lastName)
select FirstName, MiddleName, LastName from DimEmployee

insert into Employee.Data(phone, birthDate)
select Phone, BirthDate from DimEmployee


Select top(20) * from Employee.Names;
Select top(20) * from Employee.Data;

drop table Employee.Data;
drop table Employee.Names;
drop schema Employee;
