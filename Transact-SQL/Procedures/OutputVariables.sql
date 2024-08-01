create or alter proc p_average
	@value1 numeric (6,2),
	@value2 numeric (6,2),
	@result numeric (6,2) output
as 
	select @result = (@value1 + @value2)/2;


declare
	@average numeric(6,2)
	exec p_average 1234.20, 2345.40, 
	@average output
	select @average as Average;

