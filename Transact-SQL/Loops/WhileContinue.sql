declare 
	@value int = 1;
while @value <= 10
	begin
		print 'Counting...'
		set @value += 1;
		if @value = 4
			print 'The value is already:' + str(@value);
		if @value = 7
			print 'The value is already:' + str(@value);
		continue
	end;
print 'The value is already:' + str(@value);