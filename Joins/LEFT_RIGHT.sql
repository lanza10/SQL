--LEFT JOIN -> Devuelve todos los campos e la tabla izquierda y los que coinciden con la derecha
Select * from FactInternetSales;
Select * from FactInternetSalesReason;

select 
FactInternetSales.SalesOrderNumber,
CurrencyKey,
SalesReasonKey
from FactInternetSales
left join FactInternetSalesReason on 
FactInternetSales.SalesOrderNumber = FactInternetSalesReason.SalesOrderNumber; 

--RIGHT JOIN -> Devuelve todos los campos e la tabla derecha y los que coinciden con la izquierda

select 
FactInternetSales.SalesOrderNumber,
CurrencyKey,
SalesReasonKey
from FactInternetSalesReason
right join FactInternetSales on 
FactInternetSalesReason.SalesOrderNumber = FactInternetSales.SalesOrderNumber; 

