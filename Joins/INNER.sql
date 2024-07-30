--INNER JOIN -> Devuelve solo los campos que coinciden en ambas tablas
Select * from FactInternetSales;
Select * from FactInternetSalesReason;

select 
FactInternetSales.SalesOrderNumber,
SalesReasonKey
from FactInternetSales
inner join FactInternetSalesReason on 
FactInternetSales.SalesOrderNumber = FactInternetSalesReason.SalesOrderNumber

--LEFT JOIN -> Devuelve todos los campos e la tabla izquierda y los que coinciden con la derecha

--RIGHT JOIN -> Devuelve todos los campos e la tabla derecha y los que coinciden con la izquierda

--FULL JOIN -> Devuelve todos los campos cuanbdo hay una coinciencia en alguna tabla