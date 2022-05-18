use jardineria;


/* Datos en gama */
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Herramientas automotrices',
    'Herramientas automotrices para jardineria',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000017.jpeg');
    
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Equipos para cesped',
    'Equipos para cesped en jardineria',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000018.jpeg');

insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Equipamiento para riego',
    'Equipamiento para riego para jardineria',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/4414.jpeg');
    
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Herramientas manuales para huerto y jardin',
    'Herramientas manuales para huerto y jardin en jardineria',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000032.jpeg');

insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Equipos de transporte',
    'Equipos de transporte en jardineria',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/4413.jpeg');
    
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Equipos fitosanitarios',
    'Equipos fitosanitarios en jardineria ',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000019.jpeg');
    
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Productos fitosanitarios',
    'Productos fitosanitarios en jardineria ',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/4417.jpeg');

insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Abonos y fertilizantes',
    'Abonos y fertilizantes en jardineria ',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000020.jpeg');

insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Substratos',
    'Substratos en jardineria ',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000588.jpeg');
    
insert into gama_producto(gama, descripcion_texto, descripcion_html, imagen) values(
	'Macetas y accesorios para jardineria',
    'Macetas y accesorios para jardineria en jardineria ',
    'http://www.interempresas.net/Jardineria/',
    'https://img.interempresas.net/Ap/E50x50/1000023.jpeg');
    
/* Datos en producto */
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('1', 'Aspiradores y sopladores', 'Herramientas automotrices', 20, 400000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('2', 'Abonadoras para jardineria', 'Equipos para cesped', 20, 500000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('3', 'Conducciones y mangueras para riego', 'Equipamiento para Riego', 20, 800000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('4', 'Azadas y azadones', 'Herramientas manuales para huerto y jardin', 20, 500000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('5', 'Tractores para jardineria', 'Equipos de transporte', 20, 8004000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('6', 'Atomizadores suspendidos', 'Equipos fitosanitarios', 20, 400000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('7', 'Fitosanitarios ecológicos', 'Productos fitosanitarios', 20, 500000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('8', 'Abonos organicos y ecologicos', 'Abonos y fertilizantes', 20, 8000000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('9', 'Substratos universales', 'Substratos', 20, 400000.50);
INSERT into producto(codigo_producto, nombre, gama, cantidad_en_stock, precio_venta) values('10', 'Tutores', 'Macetas y accesorios para jardineria', 20, 500000.50);

/* Datos en oficina */
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('1','Armenia','Colombia','630003','929-61-74','Calle 15 # 45-48');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('2','Armenia','Colombia','630003','382-24-85','Calle 15 # 45-49');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('3','Armenia','Colombia','630003','971-26-83','Calle 15 # 45-50');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('4','Armenia','Colombia','630003','259-57-34','Calle 15 # 45-51');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('5','Armenia','Colombia','630003','639-35-10','Calle 15 # 45-52');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('6','Armenia','Colombia','630003','335-38-36','Calle 15 # 45-53');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('7','Armenia','Colombia','630003','672-61-78','Calle 15 # 45-54');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('8','Armenia','Colombia','630003','186-52-28','Calle 15 # 45-55');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('9','Armenia','Colombia','630003','929-60-13','Calle 15 # 45-56');
INSERT into oficina(codigo_oficina, ciudad, pais, codigo_postal, telefono, linea_direccion1) values ('10','Armenia','Colombia','630003','193-81-25','Calle 15 # 45-57');

/* Datos en empleado */
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (1,'Elisabet','Calleja-Olivé','2','nocaxax825@doerma.com','1');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (2,'Consuela','Márquez','2','pkemmero_v677p@hxsni.com','2');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (3,'Primitiva','de Lago','4','lipenedouppeu-3128@yopmail.com','3');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (4,'Eliana','Gomis','4','zutogummopru-4323@yopmail.com','4');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (5,'Teófila','Meléndez','6','vuppippubrellu-7688@yopmail.com','5');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (6,'Vinicio','Chacón','6','fogajireko-7595@yopmail.com','6');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (7,'Socorro','Soler','8','trahahecreijei-8317@yopmail.com','7');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (8,'Balduino','Morell','8','saugrounnukatre-2440@yopmail.com','8');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (9,'Daniela','Pascual','9','meuwozennare-2318@yopmail.com','9');
INSERT into empleado(codigo_empleado, nombre, apellido1, extension, email, codigo_oficina) values (10,'Anabel','Rozas','9','kuhausottina-4528@yopmail.com','10');

/* Datos en cliente */
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (1,'Dulce','194-71-49','506-034848','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (2,'Anacleto','400-10-72','858-132579','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (3,'Alonso','653-71-91','229-271006','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (4,'Gervasio','585-09-69','426-030514','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (5,'Melisa','934-87-82','729-542790','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (6,'Pía','823-99-51','228-146256','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (7,'Manola','053-24-50','201-914975','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (8,'Margarita','450-32-04','126-180350','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (9,'Manuela','490-17-23','226-141767','Calle 15 # 45-48','Armenia');
INSERT into cliente(codigo_cliente, nombre_cliente, telefono, fax, linea_direccion1, ciudad) values (10,'Damián','465-42-70','594-786184','Calle 15 # 45-48','Armenia');

/* Datos en pago */
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (1,'Efectivo','1', '2022-05-17',400000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (2,'Efectivo','2', '2022-05-17',500000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (3,'Efectivo','3', '2022-05-17',800000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (4,'Efectivo','4', '2022-05-17',400000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (5,'Efectivo','5', '2022-05-17',500000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (6,'Efectivo','6', '2022-05-17',800000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (7,'Efectivo','7', '2022-05-17',400000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (8,'Efectivo','8', '2022-05-17',500000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (9,'Efectivo','9', '2022-05-17',800000.50 );
INSERT into pago(codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) values (10,'Efectivo','10', '2022-05-17',400000.50 );

/* Datos en pedido */
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(1,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 1);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(2,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 2);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(3,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 3);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(4,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 4);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(5,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 5);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(6,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 6);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(7,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 7);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(8,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 8);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(9,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 9);
INSERT into pedido(codigo_pedido, fecha_pedido, fecha_esperada, estado, codigo_cliente) values(10,2022-05-17, '2022-05-24', 'En espera a entregar al cliente', 10);

/* Datos en detalle_pedido */
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(1, '1', 4, 400000.50, 10);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(2, '2', 2, 500000.50, 20);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(3, '3', 1, 800000.50, 30);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(4, '4', 3, 400000.50, 40);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(5, '5', 4, 500000.50, 50);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(6, '6', 2, 800000.50, 60);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(7, '7', 1, 400000.50, 70);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(8, '8', 4, 500000.50, 80);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(9, '9', 3, 800000.50, 90);
INSERT into detalle_pedido(codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) values(10, '10', 4, 400000.50, 100);

