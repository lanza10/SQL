SELECT * FROM DimEmployee;

exec sp_rename 'DimEmployee.FirstName', 'Name';

exec sp_rename 'DimEmployee.Name', 'FirstName';