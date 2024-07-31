--Funcion de valor Pi
select pi() as Pi

--Funcion de redondeo hacia arriba
select ceiling(120.2) as redondeo, ceiling(-120.2)as redondeoNegativo;

--Funcion de truncado
select floor(120.9) as truncado, floor(-120.9) as truncadoNegativo;

--Funcion de redondeo con aproximación
select round(123.45, 0) as redondeoDecimal, round(123.60, 0) as redondeoDecimal2;
select round(-123.45, 0) as redondeoDecimalNegativo, round(-123.60, 0) as redondeoDecimalNegativo2;
select round(123.45, 1) as redondeoDecimal, round(123.60, 1) as redondeoDecimal2;
select round(-123.45, 1) as redondeoDecimal, round(-123.60,1) as redondeoDecimal2;

--Funcion de Potencias 
select power(4,2);

--Funcion de número random
select rand()*(100-1) as aleatorio;

--Funcion raíz cuadrada
Select sqrt(80) as raiz;