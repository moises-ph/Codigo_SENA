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
