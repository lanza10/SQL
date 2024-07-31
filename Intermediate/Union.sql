-- Se utiliza para unir el resultado de varias consultas
-- Deben tener mismo num de columnas y mismo tipo de datos

Select * From DimReseller;
Select * From DimEmployee;

Select 'Employee' as Type, Title, Phone From DimEmployee
union 
Select 'Bank' as Type, BankName, Phone From DimReseller