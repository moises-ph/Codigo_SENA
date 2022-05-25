/* 1 */
SELECT codigo_oficina as oficina , ciudad as ciudad from jardineria.oficina;

/* 2 */ 
SELECT ciudad, telefono from jardineria.oficina where pais = (select pais from jardineria.oficina group by pais order by count(pais) desc limit 1);

/* 3 */
SELECT nombre, concat(apellido1 + ' '+ apellido2) as apellido , email from jardineria.empleado where codigo_jefe = 7;

/* 4 */
SELECT nombre, concat(apellido1 + ' ' + apellido2) as apellido, email from jardineria.empleado where puesto = 'Jefe';

/* 5 */
SELECT  nombre, concat(apellido1 + ' ' + apellido2) as apellido, email from jardineria.empleado where puesto = 'Representantes de ventas';

/* 6 */
SELECT nombre_cliente as nombre from jardineria.cliente where pais = 'España';

/* 7 */
SELECT distinct estado from jardineria.pedido;

/* 8 */
	/* 8.1 */
		SELECT codigo_cliente from jardineria.pago where YEAR(fecha_pago) = 2008;
        
	/* 8.2 */
		SELECT codigo_cliente from jardineria.pago where DATE_FORMAT(fecha_pago, '%Y') = 2008;
        
	/* 8.3 */
		SELECT codigo_cliente from jardineria.pago where substring(fecha_pago, 1,4) = 2008;

/* 9 */
SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from jardineria.pedido where fecha_entrega > fecha_esperada;

/* 10 */
	/* 10.1 */
		SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from jardineria.pedido where fecha_entrega > adddate(fecha_esperada, interval 2 day);
        
	/* 10.2 */
		SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from jardineria.pedido where datediff(fecha_entrega, fecha_esperada) >= 2;

	/* 10.3 */
		SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from jardineria.pedido where fecha_entrega - 2 > fecha_esperada;

/* 11 */
SELECT codigo_pedido from jardineria.pedido where estado = 'Rechazado';

/* 12 */
SELECT codigo_pedido from jardineria.pedido where DATE_FORMAT(fecha_entrega, '%M') = 01;

/* 13 */
SELECT id_transaccion from jardineria.pago where forma_pago = 'PayPal';

/* 14 */
SELECT distinct(forma_pago) from jardineria.pago;

/* 15 */
SELECT codigo_producto from jardineria.producto where gama = 'Ornamentales' and cantidad_en_stock > 100; 

/* 16 */
SELECT codigo_cliente as codigo, nombre_cliente as nombre from jardineria.cliente where region = 'Madrid' and codigo_empleado_rep_ventas > 11 or codigo_empleado_rep_ventas < 30;