declare
--Solo se debe inicializar la variable si va a tratarse como una constante
	@id_valor int /*= 50 */,
	@nombre varchar(20),
	@telefono numeric(10),
	@fecha_nac date,
	@activo bit,

	@productName varchar(50),
	@productKey int;
begin 
	set @id_valor = 23;
	--set @id_valor = 'Hola'; Error por tipado
	set @nombre = 'Hola';
	set @telefono = 123456789;
	set @fecha_nac = '2002-12-20';
	set @activo = 'true';
	select @id_valor as Id, @nombre as Nombre, @telefono as Telefono, @fecha_nac as FechaNacimiento, @activo as Activo;

	set @productKey = 10;
	set @productName = (select EnglishProductName from DimProduct Where ProductKey = @productKey);
	select @productName as Name;
end;