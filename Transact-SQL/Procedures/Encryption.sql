create or alter proc p_test
as
select * from DimEmployee;

exec sp_helptext p_test;

create or alter proc p_test
with encryption
as
select * from DimEmployee;

exec sp_helptext p_test;

drop proc p_test;