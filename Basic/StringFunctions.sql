--funcion obtención de caracteres
Select char(65) as letra;

--funcion para unir strings
select concat('Hola ', 'mundo', '!') as HelloWorld;

--funcion para tamaño de string
select len('SQL server') as longitud;

--funcion para pasar a minúsculas
select lower('HOLA');

--funcion para pasar a mayúsculas
select upper('hola');

--funcion para coger los caracteres indicados desde la izq
select left('Hola',2);

--funcion para coger los caracteres indicados desde la derecha
select right('Hola',1);

--Combinación de funciones para poner la primera letra a mayúscula y el resto a minúscula
select concat(
	upper(
		left('hola a todos',1)
	), 
	lower(
		right('hola a todos', len('hola a todos')-1)
	)
);

--funcion para cortar espacios en blanco
	--por la izq
		select ltrim('       hola');
	--por la derecha
		select rtrim('hola       ');
	--por izq y der
		select trim('    hola    ');

--función para reemplazar caracteres en un texto
select replace('Haila mundai', 'ai','o');

--funcion para reemplazar varios caracteres por la misma cantidad de caracteres
select translate ('abcdefa', 'a', '0');

--funcion para replicar un caracter tantas veces como indiques
select replicate('AA',2)

--funcion para dar la vuelta a un string
select reverse('aloH');