--VARIABLES DE SISTEMA

--Devuelve version completa e información de nivel de servicio
print 'Version: ' + @@version;

--Devuelve el lenguaje del servidor
print 'Lenguaje: ' + @@language;

--Devuleve el nombre del servidor
print 'Servidor: ' + @@servername;

--Devuelve el número de conexiones de usuarios
print 'Conexiones usuario: ' + str(@@connections);

--Devuelve el número de conexiones máximas
print 'Conexiones máximas: ' + str(@@max_connections);

--Devuelve los segundos que la base de datos lleva activa
print 'Tiempo en proceso: ' + str(@@cpu_busy) + ' segundos';

--Devuelve eñ tiempo que ha estado inactiva la bd en segundos
print 'Tiempo inactivo: ' + str(@@idle) + ' segundos';

--Devuelve las transacciones activas en el momento de ejecución
print 'Transacciones activas: ' + str(@@trancount);

--Devuelve cantidad de filas afectadas en la última operación ejecutada
print 'Última operación: ' + str(@@rowcount) + ' fila/s';

--Devuelve el estado de la última operación fetch de un cursor
print 'Último fetch de un cursosr: ' + str(@@fetch_status);

--Devuelve el código de la última operación
print 'Error última operacion: ' + str(@@error);

--Devuelve el último valor identity insertado en el sistema
print 'Ultimo identity: ' + str(@@identity);

--Devuelve el primer día de la semana
print 'Primer día de la semana: ' + str(@@datefirst);

--Devuelve el tiempo de bloqueo de sesión en milisegundos
print 'Bloqueo en milisegundos: ' + str(@@lock_timeout);