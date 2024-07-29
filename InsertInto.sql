CREATE TABLE ExEmpleado(id int, nombre char(20) , apellido char (20));

SELECT EmployeeKey, FirstName, LastName FROM DimEmployee;

INSERT INTO ExEmpleado (id, nombre, apellido)
SELECT EmployeeKey, FirstName, LastName FROM DimEmployee
WHERE EndDate IS NOT NULL;

SELECT * FROM ExEmpleado;

DROP TABLE ExEmpleado;