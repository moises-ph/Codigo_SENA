create database jardineria;
use jardineria;

create table gama_producto(
							gama varchar(50) not null,
                            descripcion_texto TEXT,
                            descripcion_html TEXT,
                            imagen VARCHAR(256)
							);	                            
                            
create table producto(
					codigo_producto varchar(15) not null,
                    nombre varchar(70) not null,
                    gama varchar(50) not null,
                    dimensiones varchar(25),
                    proveedor varchar(50),
                    descripcion TEXT,
                    cantidad_en_stock smallint(6) not null,
                    precio_venta DECIMAL(15,2) not null,
                    precio_proveedor DECIMAL(15,2)
                    );

create table detalle_pedido(
							cantidad INT(11) not null,
                            precio_unidad DECIMAL(15,2) not null,
                            numero_linea SMALLINT(6) not null
							);

create table pedido(
					codigo_pedido INT(11) not null,
                    fecha_pedido DATE not null,
                    fecha_esperada DATE not null,
                    fecha_entrega DATE,
                    estado VARCHAR(15) not null,
                    comentarios TEXT,
                    codigo_cliente int(11)
					);
                    
create table cliente(
					codigo_cliente int(11) not null,
                    nombre_cliente varchar(50) not null,
                    nombre_contacto varchar(30),
                    apellido_contacto varchar(30),
                    telefono varchar(15) not null,
                    fax varchar(15) not null,
                    linea_direccion1 varchar(50) not null,
                    linea_direccion2 varchar(50),
                    ciudad varchar(50) not null,
                    region varchar(50),
                    pais varchar(50), 
                    codigo_postal varchar(10),
                    codigo_empleado_rep_ventas INT(11),
                    limite_credito decimal(15,2)
					);

create table pago(
				forma_pago varchar(40) not null,
                id_transaccion varchar(50) not null,
                fecha_pago DATE not null,
                total decimal(15,2) not null
					);
                    
create table empleado(
					codigo_empleado int(11) not null,
                    nombre varchar(50) not null,
                    apellido1 varchar(50) not null,
                    apellido2 varchar(50),
                    extension varchar(10) not null,
                    email varchar(100) not null,
                    codigo_oficina varchar(10) not null,
                    codigo_jefe int(11),
                    puesto varchar(50)
						);                        

create table oficina(
					codigo_oficina varchar(10) not null,
                    ciudad varchar(30) not null,
                    pais varchar(50) not null,
                    region varchar(50),
                    codigo_postal varchar(10) not null,
                    telefono varchar(20) not null,
                    linea_direccion1 varchar(50) not null,
                    linea_direccion2 varchar(50)
					);

alter table gama_producto add constraint pk_gama_producto primary key (gama);
alter table producto add constraint pk_producto primary key (codigo_producto);
alter table pedido add constraint pk_pedido primary key (codigo_pedido);
alter table cliente add constraint pk_cliente primary key (codigo_cliente);
alter table pago add constraint pk_pago primary key (id_transaccion);
alter table empleado add constraint pk_empleado primary key (codigo_empleado);
alter table oficina add constraint pk_oficina primary key (codigo_oficina);

alter table pago add column codigo_cliente int(11);

alter table detalle_pedido add column codigo_pedido INT(11);
alter table detalle_pedido add column codigo_producto varchar(15);

alter table empleado add constraint fk_empleado_2 foreign key (codigo_oficina) references oficina(codigo_oficina);
alter table empleado add constraint fk_empleado_Self foreign key (codigo_jefe) references empleado(codigo_empleado);
alter table cliente add constraint fk_empleado foreign key (codigo_empleado_rep_ventas) references empleado(codigo_empleado);
alter table pago add constraint fk_cliente2 foreign key (codigo_cliente) references cliente(codigo_cliente);
alter table pedido add constraint fk_cliente foreign key (codigo_cliente) references cliente(codigo_cliente);
alter table detalle_pedido add constraint fk_pedido foreign key (codigo_pedido) references pedido(codigo_pedido);
alter table detalle_pedido add constraint fk_producto foreign key (codigo_producto) references producto(codigo_producto);
alter table producto add constraint fk_gama foreign key (gama) references gama_producto(gama);