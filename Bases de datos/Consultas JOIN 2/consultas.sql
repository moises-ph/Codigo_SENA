use jardineria;

/* 1 */
select cliente.nombre_cliente as "Nombre del Cliente", empleado.nombre as "Nombre de la Empresa", empleado.apellido1 as "ApellidoEmpresa" from cliente inner join empleado on cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado;

/* 2 */
select c.nombre_cliente as "Nombre del Cliente", e.nombre as "Nombre empleado" from cliente c natural join pago p, empleado e;

/* 3 */
select c.nombre_cliente as "Nombre del Cliente", e.nombre as "Nombre empleado" from cliente c  inner join empleado e on e.codigo_empleado = c.codigo_empleado_rep_ventas inner join pago p on p.codigo_cliente != c.codigo_cliente;

/* 4 */
select c.nombre_cliente as "Nombre del Cliente", e.nombre as "Nombre empleado", o.ciudad as "Ciudad del representante" from cliente c natural join pago p, empleado e, oficina o;

/* 5 */
select c.nombre_cliente as "Nombre del Cliente", e.nombre as "Nombre empleado", o.ciudad as "Ciudad del representante" from cliente c inner join pago p, empleado e, oficina o where c.codigo_cliente not in (select codigo_cliente from pago) and c.codigo_empleado_rep_ventas in(select codigo_empleado from empleado) and e.codigo_oficina = o.codigo_oficina;	