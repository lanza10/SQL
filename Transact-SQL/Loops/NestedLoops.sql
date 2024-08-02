declare
	@value1 int = 1,
	@value2 int = 2;
while @value1 <= 4
	begin
		print concat('Outer loop: = ', @value1);
		while @value2 <= 8
			begin
			print concat('Inner loop: = ', @value2);
			set @value2 += 1;
			end
			set @value2 = 2;
		set @value1 += 1;
	end;