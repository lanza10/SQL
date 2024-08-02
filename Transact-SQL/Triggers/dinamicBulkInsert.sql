if(select name from tempdb.sys.tables) like '%#bitest%'
drop table #bitest
create table #bitest(
	id int,
	test varchar(10)
);

bulk insert #bitest
from ''--ruta de archivo con datos
with (firstrow = 2);