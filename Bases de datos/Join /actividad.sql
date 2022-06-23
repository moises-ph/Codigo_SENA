use jardineria;

/* 1 */
select c.nombre_cliente as 'Nombre del cliente', e.nombre as 'Nombre Rep ventas', e.apellido1 as 'Apellido Rep ventas' from cliente c join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado;

/* 2 */
select c.nombre_cliente as 'Nombre del cliente', e.nombre as 'Nombre Rep ventas', e.apellido1 as 'Apellido Rep ventas' from cliente c join pago p on c.codigo_cliente = p.codigo_cliente join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado;

/* 3 */
select distinct c.nombre_cliente as 'Nombre del cliente', e.nombre as 'Nombre Rep ventas', e.apellido1 as 'Apellido Rep ventas' from cliente c join empleado e, pago p where c.codigo_cliente not in(select codigo_cliente from pago) and c.codigo_empleado_rep_ventas = e.codigo_empleado;

/* 4 */
select distinct c.nombre_cliente as 'Nombre del cliente', e.nombre as 'Nombre Rep ventas', e.apellido1 as 'Apellido Rep ventas', o.ciudad as 'Ciudad de la oficina' from cliente c join pago p on c.codigo_cliente = p.codigo_cliente join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado join oficina o on e.codigo_oficina = o.codigo_oficina;

/* 5 */
select distinct c.nombre_cliente as 'Nombre del cliente', e.nombre as 'Nombre Rep ventas', e.apellido1 as 'Apellido Rep ventas', o.ciudad as 'Ciudad de la oficina' from cliente c join empleado e, pago p, oficina o where c.codigo_cliente not in(select codigo_cliente from pago) and c.codigo_empleado_rep_ventas = e.codigo_empleado and e.codigo_oficina = o.codigo_oficina;

/* 6 */
select distinct o.linea_direccion1 as 'Direccion 1', o.linea_direccion2 as 'Direccion 2' from oficina o join cliente c , empleado e where c.codigo_empleado_rep_ventas = e.codigo_empleado and e.codigo_oficina = o.codigo_oficina and o.ciudad = 'Fuenlabrada';

/* 7 */
select distinct c.nombre_cliente as 'Nombre cliente', e.nombre as 'Nombre representante', o.ciudad as 'Ciudad Rep' from cliente c, empleado e natural join oficina o;

/* 8 */
select empleado.nombre as 'Jefe', e.nombre as 'Nombre empleado' from empleado join empleado e on empleado.codigo_empleado = e.codigo_jefe;

/* 9 */
select emp.nombre as 'Nombre empleado' ,empleado.nombre as 'Jefe del jefe', e.nombre as 'Jefe' from empleado join empleado e on empleado.codigo_empleado = e.codigo_jefe join empleado emp on e.codigo_empleado = emp.codigo_jefe;

/* 10 */
select distinct c.nombre_cliente as 'Nombre cliente' from cliente c natural join pedido p where p.estado = 'Pendiente';

/* 11 */
select distinct p.gama as 'Gama Producto' from producto p natural join detalle_pedido d natural join pedido pe natural join cliente c;


/* Consultas multitabla Punto 2 */

/* 1 */
select distinct c.nombre_cliente as 'Nombre del cliente' from cliente c right join pago p on c.codigo_cliente not in(select pa.codigo_cliente from pago pa);

/* 2 */
select distinct c.nombre_cliente as 'Nombre del cliente' from cliente c right join pedido p on c.codigo_cliente not in(select pa.codigo_cliente from pedido pa);

/* 3 */
select distinct c.nombre_cliente as 'Nombre del cliente' from cliente c right join pedido p on c.codigo_cliente != p.codigo_cliente left join pago pa on c.codigo_cliente != pa.codigo_cliente;

/* 4 */
select distinct e.nombre as 'Nombre empleado' from empleado e left join oficina o on e.codigo_empleado != o.codigo_oficina;