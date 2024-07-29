SELECT * FROM DimEmployee;

UPDATE DimEmployee set FirstName = 'Robert'
WHERE FirstName = 'Roberto';

UPDATE DimEmployee set FirstName = 'Roberto'
WHERE FirstName = 'Robert';

UPDATE DimEmployee set NameStyle = 1
Where EmployeeKey < 10;

UPDATE DimEmployee set NameStyle = 0
Where EmployeeKey < 10;