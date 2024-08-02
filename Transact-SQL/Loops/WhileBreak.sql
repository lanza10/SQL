declare
	@i int = 1;
while @i <=12
	begin
		print('Counting...');
		set @i += 1;
		if @i = 7 break
	end;
print('The value is already: ' + str(@i));