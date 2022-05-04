create database producto_pc;
use producto_pc;
create table producto(codigo int(10),
					  nombre varchar(100) not null,
                      precio Double not null,
                      codigo_fabricante int not null);
create table fabricante(codigo int(10),
						nombre_fabricante varchar(100) not null);
                        
alter table producto add constraint pk_producto primary key (codigo);
alter table fabricante add constraint pk_fabricante primary key (codigo);

alter table producto add constraint fk_fabricante_producto foreign key (codigo_fabricante) references fabricante(codigo);
