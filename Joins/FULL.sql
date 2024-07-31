--FULL JOIN -> Devuelve todos los campos cuanbdo hay una coinciencia en alguna tabla
Select * from DimEmployee;
Select * from DimSalesTerritory;

Select  st.SalesTerritoryKey,
		e.EmployeeKey,
		e.firstName,
		st.SalesTerritoryCountry

from DimSalesTerritory st
full join DimEmployee e on 
st.SalesTerritoryKey = e.SalesTerritoryKey;

--En este caso todos los registros tienen valor
