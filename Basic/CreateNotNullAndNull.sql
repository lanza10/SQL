CREATE TABLE ExEmployee(
  idEmployee int not null,
  firstName varchar(20) not null,
  lastName varchar(20) not null,
  phone numeric(10) null,
);

INSERT INTO ExEmployee VALUES(
	1, 
	'John',
	'Doe',
	Null
);

INSERT INTO ExEmployee VALUES(
	1, 
	'John',
	'Doe',
	1234345533
);

SELECT * FROM ExEmployee;

DROP TABLE ExEmployee;