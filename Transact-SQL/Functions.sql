-- funciones de agregado -> Sum(), Avg(), Count()...
-- funciones de fila -> upper(), lower(), substring() ...
	--funciones determinísticas: siempre otorgan el mismo resultado con la misma entrada (la mayoría)
	--funciones no determinísticas: no siempre lo hacen

--Tres tipos de funciones definidas por el usuario:
	--Escalares: retornan un valor escalar
	--De tabla de varias instrucciones: retornan una tabla
	--De tabla en línea: retornan una tabla

create or alter function f_suma
(@valor1 int, @valor2 int) 
returns int
as 
begin
	declare @resultado int
	set @resultado = @valor1 + @valor2
	return @resultado
end;

select dbo.f_suma(3,2) as suma;

drop function f_suma;