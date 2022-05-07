use producto_pc;

/*1.*/
SELECT nombre from producto;

/*2*/
SELECT nombre,precio from producto;

/*3*/
SELECT * from producto;

/*4*/
SELECT nombre, precio / 4025, precio / 4250 from producto;

/*5*/
SELECT nombre as 'Nombre de producto', precio / 4250 as 'Euros', precio / 4025 as 'Dolar' from producto;

/*6*/
SELECT UPPER(nombre) , precio from producto;

/*7*/
SELECT LOWER(nombre) , precio from producto;

/*8*/
SELECT nombre, substring(upper(nombre), 1,2) from fabricante;

/*9*/
SELECT nombre, ROUND(precio) from producto;

/*10*/
SELECT nombre, round(precio) from producto;

/*11*/
SELECT codigo_fabricante as 'Codigo del fabricante en producto' from producto;

/*12*/
SELECT distinct codigo_fabricante from producto;

/*13*/
SELECT nombre from fabricante order by nombre ASC;

/*14*/
SELECT nombre from fabricante order by nombre DESC;

/*15*/
SELECT nombre, precio from producto order by nombre ASC, precio DESC;

/*16*/
select * from fabricante order by nombre DESC limit 5;

/*17*/
select * from fabricante order by nombre DESC limit 4, 3;

/*18*/
select nombre, precio from producto order by precio ASC limit 1;

/*19*/
select nombre, precio from producto order by precio DESC limit 1;

/*20*/
select nombre from producto where codigo_fabricante=2;

/*21*/
select nombre from producto where precio/4238 <=125;

/*22*/
select nombre from producto where precio/4238 >=400;

/*23*/
select nombre from producto where not precio/4238 >=400;

/*24*/
select * from producto where precio/4238 >80 and precio/4328 <300;

/*25*/
select * from producto where precio/4238 >200 and codigo_fabricante=6;

/*26*/
select * from producto where codigo_fabricante=1 or codigo_fabricante=3 or codigo_fabricante=5;

/*27*/
select * from producto where codigo_fabricante in(1, 3, 5);

/*28*/
select nombre, precio*100 as 'Centimos' from producto;

/*29*/
select nombre from fabricante where (nombre like 'S%');

/*30*/
select nombre from fabricante where (nombre like '%e');
 
/*31*/
select nombre from fabricante where (nombre like '%w%');

/*32*/
select nombre from fabricante where (nombre like '__');

/*33*/
select nombre from producto where (nombre like '$portatil$');

/*34*/
select nombre from producto where (nombre like '$Monitor$') and precio/4238<215;

/*35*/
select nombre, precio from producto where precio/4238  >=180 order by precio DESC, nombre ASC;

