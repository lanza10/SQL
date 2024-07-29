SELECT * FROM DimEmployee;

ALTER TABLE DimEmployee ADD Genre char(1);

SELECT Genre FROM DimEmployee;

ALTER TABLE DimEmployee DROP COLUMN Genre;
