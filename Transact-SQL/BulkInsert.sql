--Bulk insert permite la carga eficiente de atos de un arcgivo a una tabla
create table autos(
	marca varchar(20),
	modelo varchar(20),
	tipo varchar(20),
	Color varchar(15)
);

select * from autos;

bulk insert
autos --tabla destino
from '' --Ruta al  archivo
with (firstrow = 2); --Esto depende de si la primera fila es el nombre de los campos+

drop table autos;