declare
	@i int = 0,
	@table int = 20;
while @i <= 10
	begin
		print(str(@table) + ' x ' + str(@i) + ' = ' +str(@table*@i));
		set @i += 1;
	end;