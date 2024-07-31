--funcion para obtener fecha actual
select getdate() as fecha;

--funcion para sumar o restar a una fecha 
select dateadd(day,5, getdate());
select dateadd(month,5, getdate());
select dateadd(year,5, getdate());
select dateadd(hour,5, getdate());
select dateadd(minute,5, getdate());
select dateadd(second,5, getdate());

select * from DimEmployee
where StartDate between '2006-01-01' and dateadd(year,1,'2006-01-01');

--funcion para obtener el nombre de parte de la fecha
set language spanish;
select datename(month, getDate()) as Mes;
select datename(weekday, getDate()) as Mes;

--funcion para ver el numero de una parte de la fecha
select datepart(month,getdate()) as Mes;
select datepart(day,getdate()) as Mes;
select datepart(year,getdate()) as Mes;



