/*Que es SQL/ Structured Query Language: Lenguaje estructurado de consultas. Inventado por IBM
Es un lenguaje inventado para interactuar con bases de datos relacionales.

__COMANDOS SQL: 

DDL; Data Definition Language = lenguaje de definicion de datos (crear y modificar estructura de una base de datos).
Comandos = CREATE, ALTER, DROP, TRUNCATE.

DML; Data Manipulation Language = Lenguaje de manipulacion de datos (Hacer consultas de seleccion y accion).
Comandos = SELECT, INSERT, UPDATE, DELETE.

DCL; Data Control Language = Lenguaje de control de datos (Proporcionar seguridad a la informacion).
Comandos = GRANT, REVOKE.

TCL; Transaction Control Language = lengueje de control de transacciones (Gestion de cambios en los datos)
Comandos = COMMIT, ROLLBACK, SAVEPOINT.

__CLAUSULAS SQL:

FROM; Especifica la tabla de la que se quieren obtener los datos. 
WHERE; Especifica las condiciones o criterios de los registros seleccionados. 
GROUP BY; Para agrupar los registros seleccionados en funcion de un campo. 
HAVING; Especifica las funciones o criterios que deben cumplir los grupos. 
ORDER BY; Ordena los registros seleccionados en funcion de un campo.

__OPERADORES DE COMPARACION:

< | Menor que
> | mayor que
= | Igual
<= | Menor o igual que
>= | Mayor o igual que
<> | Distinto que
BETWEEN | Entre. utilizado para especificar rangos de valores.
LIKE | Como. Utlisado con caracteres comodin (?*).
IN | En. Para especificar registros en un campo en concreto.

__OPERADORES LOGICOS:

AND | Y lógico
OR | O lógico
NOT | Negación lógica

__fUNCIONES DE AGRUPACION:

AVG(); Calcula el promedio de un campo.
COUNT(); Cuenta los registros de un campo.
SUM(); Suma los valores de un campo.
MAX(); Devuelve el maximo de un campo.
MIN(); Devuelve el minimo d eun campo.

Now(); devuelve el dia y hora actuales.
Datediff(); devuelve la diferencia que hay entre dos fechas.
Date_format(); permite formatear resultados para quitar decimales, redondear.
Concat(); permite concatenar, se usa con cadenas de texto.

__Instruccion SQL: Comando + Clausulas + Operadores + Funciones

__Orden de escritura: Comando + Clausula From + Clausula Where + Clausula Group by + Cláusula Having + Cláusula Order by.

----------------------------------------------------------------------------------------------------------------------------------------------

CONSULTAS:
(CLAUSULA FROM) SELECT * FROM pructos;
(CLAUSULA FROM Y WHERE) SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO FROM productos WHERE SECCIÓN="CERÁMICA";

CONSULTA + OPPERADORES LOGICOS
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO OR) SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO FROM productos WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES";
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO AND) SELECT * FROM productos WHERE SECCIÓN="DEPORTES" AND PAÍSDEORIGEN="USA";
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO AND O DE COMPARACION BETWEEN) SELECT * FROM productos WHERE FECHA >='2000-03-20' AND FECHA <='2000-04-30';   ||  SELECT * FROM productos WHERE FECHA BETWEEN '2000-03-20' AND '2000-04-30';

CONSULTAS DE ORDENAMIENTO
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO OR + CLAUSULA ORDER BY) SELECT * FROM productos WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES" ORDER BY SECCIÓN;
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO OR + CLAUSULA ORDER BY + DESC) SELECT * FROM productos WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES" ORDER BY SECCIÓN DESC;
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO OR + CLAUSULA ORDER BY) SELECT * FROM productos WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES" ORDER BY SECCIÓN, PRECIO;
(CLAUSULA FROM Y WHERE + OPERADOR LOGICO OR + CLAUSULA ORDER BY + DESC) SELECT * FROM productos WHERE SECCIÓN="CERÁMICA" OR SECCIÓN="DEPORTES" ORDER BY SECCIÓN DESC, PRECIO ASC;

CONSULTAS DE AGRUPACION
(FUNCION SUM + CLAUSULA FROM + CLAUSULA GROUP BY) SELECT SECCIÓN, SUM(PRECIO) FROM productos GROUP BY SECCIÓN; 
(FUNCION SUM + CLAUSULA FROM + CLAUSULA GROUP BY + CLAUSULA ORDER BY COMO ALIAS DE PRECIO) SELECT SECCIÓN, SUM(PRECIO) AS SUMA_ARTICULOS FROM productos GROUP BY SECCIÓN ORDER BY SUMA_ARTICULOS;
(FUNCION SUM + CLAUSULA FROM + CLAUSULA GROUP BY + CLAUSULA ORDER BY COMO ALIAS DE PRECIO) SELECT SECCIÓN, NOMBREARTICULO, SUM(PRECIO) AS SUMA_ARTICULOS FROM productos GROUP BY SECCIÓN ORDER BY SUMA_ARTICULOS;
(FUNCION AVG + CLAUSULA HAVING) SELECT SECCIÓN, AVG(PRECIO) AS MEDIA_ARTICULOS FROM productos GROUP BY SECCIÓN HAVING SECCIÓN='DEPORTES' OR SECCIÓN='CONFECCIÓN';
(FUNCION COUNT + CLAUSULA GROUP BY) SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS N_CLIENTES FROM clientes GROUP BY POBLACIÓN;
(FUNCION MAX + CLAUSULA GROUP BY) SELECT SECCIÓN, MAX(PRECIO) AS PRECIO_ALTO FROM productos WHERE SECCIÓN='CONFECCIÓN' GROUP BY SECCIÓN;

CONSULTAS DE CALCULO
(CALCULO CON ALIAS + FUNCION ROUND) SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO, ROUND(PRECIO*1.21,3) AS PRECIO_TOTAL FROM productos;
(CALCULO CON ALIAS + UN DESCUENTO) SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO, PRECIO-3 AS PRECIO_DTO FROM productos;
(CALCULO + FUNCION NOW, DATEDIFF Y DATE_FORMAT) SELECT NOMBREARTÍCULO, SECCIÓN, PRECIO, FECHA, DATE_FORMAT(NOW(),'%D-%M-%Y') AS DIA_DE_HOY, DATEDIFF(NOW(), FECHA) AS DIFERENCIA_DIAS FROM productos WHERE SECCIÓN="DEPORTES";

*/