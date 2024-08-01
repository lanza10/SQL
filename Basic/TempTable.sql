--Las tablas temporales solo son visibles en una sesión de usuario
create table #users(
 username varchar(10),
 password varchar(12),
 primary key(username)
 );

 select * from #users;

 insert into #users values('test','1234');

 use AdventureWorks;

 select * from #users; --aunque no se ve reflejada en el explorador de objetos, funciona