--VARIABLES DE SISTEMA

--Devuelve version completa e informaci�n de nivel de servicio
print 'Version: ' + @@version;

--Devuelve el lenguaje del servidor
print 'Lenguaje: ' + @@language;

--Devuleve el nombre del servidor
print 'Servidor: ' + @@servername;

--Devuelve el n�mero de conexiones de usuarios
print 'Conexiones usuario: ' + str(@@connections);

--Devuelve el n�mero de conexiones m�ximas
print 'Conexiones m�ximas: ' + str(@@max_connections);

--Devuelve los segundos que la base de datos lleva activa
print 'Tiempo en proceso: ' + str(@@cpu_busy) + ' segundos';

--Devuelve e� tiempo que ha estado inactiva la bd en segundos
print 'Tiempo inactivo: ' + str(@@idle) + ' segundos';

--Devuelve las transacciones activas en el momento de ejecuci�n
print 'Transacciones activas: ' + str(@@trancount);

--Devuelve cantidad de filas afectadas en la �ltima operaci�n ejecutada
print '�ltima operaci�n: ' + str(@@rowcount) + ' fila/s';

--Devuelve el estado de la �ltima operaci�n fetch de un cursor
print '�ltimo fetch de un cursosr: ' + str(@@fetch_status);

--Devuelve el c�digo de la �ltima operaci�n
print 'Error �ltima operacion: ' + str(@@error);

--Devuelve el �ltimo valor identity insertado en el sistema
print 'Ultimo identity: ' + str(@@identity);

--Devuelve el primer d�a de la semana
print 'Primer d�a de la semana: ' + str(@@datefirst);

--Devuelve el tiempo de bloqueo de sesi�n en milisegundos
print 'Bloqueo en milisegundos: ' + str(@@lock_timeout);