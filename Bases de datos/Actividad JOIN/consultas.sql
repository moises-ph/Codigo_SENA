use tienda;

/* 1 */
select p.nombre as 'Nombre de producto', p.precio, f.nombre as 'Nombre de fabricante' from producto as p join fabricante as f on p.codigo_fabricante = f.codigo;

/* 2 */
select p.nombre as 'Nombre de producto', p.precio, f.nombre as 'Nombre de fabricante' from producto as p join fabricante as f on p.codigo_fabricante = f.codigo order by f.nombre ASC;

/* 3 */
select p.codigo as 'Codigo del producto', p.nombre as 'Nombre del producto', f.codigo  as 'Codigo de fabricante', f.nombre as 'Nombre de fabricante' from producto as p join fabricante as f on p.codigo_fabricante = f.codigo;

/* 4 */
select p.nombre as 'Nombre de producto', min(p.precio), f.nombre as 'Nombre de fabricante' from producto as p join fabricante as f on p.codigo_fabricante = f.codigo;

/* 5 */
select p.nombre as 'Nombre de producto', max(p.precio), f.nombre as 'Nombre de fabricante' from producto as p join fabricante as f on p.codigo_fabricante = f.codigo;

/* 6 */
select p.nombre as 'Nombre del producto' from producto as p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like 'lenovo';

/* 7 */
select p.nombre as 'Nombre del producto' from producto as p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like 'crucial' and p.precio > 200;

/* 8 */
select p.nombre as 'Nombre del producto' from producto as p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Asus' || f.nombre = 'Hewlett-Packard' || f.nombre = 'Seagate';

/* 9 */
select p.nombre as 'Nombre del producto' from producto as p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre in ('Asus', 'Hewlett-Packard', 'Seagate');

/* 10 */
select p.nombre, p.precio from producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like '%e';

/* 11 */
select p.nombre, p.precio from producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like '%w%';

/* 12 */
select p.nombre, p.precio, f.nombre from producto p, fabricante f where p.precio >= 180 order by p.precio desc , f.nombre asc;

/* 13 */
select f.codigo, f.nombre from fabricante f join producto p on p.codigo_fabricante = f.codigo;

/* 14 */
select f.codigo, f.nombre from fabricante f left join producto p on p.codigo_fabricante = f.codigo;

/* 15 */
select f.codigo, f.nombre from producto p right join fabricante f on f.codigo = p.codigo_fabricante where p.codigo_fabricante is null;

