declare
	@employeePersonalData table(id int, name varchar (80), phone varchar(20));
begin
	insert into @employeePersonalData (id, name, phone)
	select Employeekey, CONCAT(FirstName,' ', MiddleName, ' ' ,LastName), Phone from DimEmployee;

	select * from @employeePersonalData;
--No se almacena, al terminar la ejecucion desaparece
end;