Select * From DimEmployee;

Select EmployeeKey, FirstName, coalesce(MiddleName, ' ')as MiddleName , LastName 
From DimEmployee 
Where MiddleName IS NULL;

Select Top(50) EmployeeKey, FirstName, 
isnull(ParentEmployeeNationalIDAlternateKey, 'Unknown')as  ParentEmployeeNationalIDAlternateKey
From DimEmployee 
Where MiddleName IS NULL;