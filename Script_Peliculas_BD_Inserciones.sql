/*==============================================================*/
/* Table: Cliente                                               */
/*==============================================================*/
create table Cliente
(
   Cliente_id           int not null,
   Cliente_nombre       text ,
   Cliente_Apellido     text ,
   Cliente_cedula       numeric,
   Cliente_fecha_nacimiento date,
   primary key (Cliente_id)
);
/*==============================================================*/
/* Table: Empleado                                              */
/*==============================================================*/
create table Empleado
(
   Empleado_id          int not null,
   Empleado_cedula      numeric,
   Empleado_nombre      text ,
   Empleado_apellido    text,
   Empleado_correo      text,
   primary key (Empleado_id)
);
/*==============================================================*/
/* Table: Alquiler                                              */
/*==============================================================*/
create table Alquiler
(
   Cliente_id           int not null,
   Empleado_id          int not null,
   Aqluiler_id          int not null,
   Alquiler_fecha       date,
   Aqluiler_fecha_devolucion_estimada date,
   Fecha_entrega_real   date,
   Costo_arriendo       numeric,
   primary key (Aqluiler_id),
   foreign key (Cliente_id) references Cliente (Cliente_id) ,
   foreign key (Empleado_id) references Empleado (Empleado_id) 
);
/*==============================================================*/
/* Table: Devolucion_Pelicula                                   */
/*==============================================================*/
create table Devolucion_Pelicula
(
   Aqluiler_id          int not null,
   Devolucion_id        int not null,
   Devolucion_Motivo    text,
   Devolucion_costo     numeric,
   primary key (Devolucion_id),
   foreign key (Aqluiler_id) references Alquiler (Aqluiler_id),
);


/*==============================================================*/
/* Table: Observacion                                           */
/*==============================================================*/
create table Observacion
(
   Aqluiler_id          int not null,
   Observacion_id       int not null,
   Observacion_Calificacion text ,
   Observacion_Descripcion text,
   primary key (Observacion_id),
   foreign key (Aqluiler_id) references Alquiler (Aqluiler_id),
);

/*==============================================================*/
/* Table: Pelicula                                              */
/*==============================================================*/
create table Pelicula
(
   Aqluiler_id          int not null ,
   Pelicula_id          int not null ,
   Pelicula_titulo      text,
   Pelicula_Precio      numeric,
   Pelicula_Anio        numeric,
   primary key (Pelicula_id),
   foreign key (Aqluiler_id) references Alquiler (Aqluiler_id)
);

/*==============================================================*/
/* Table: Penalizacion                                          */
/*==============================================================*/
create table Penalizacion
(

   Aqluiler_id          int not null,
   Penalizacion_id      int not null,
   Penalizacion_Motivo  text,
   Penalizacion_Precio  numeric,
   primary key (Penalizacion_id),
   foreign key (Aqluiler_id) references Alquiler (Aqluiler_id)
);

/*==============================================================*/
/* Table: Tipo_Pelicula                                         */
/*==============================================================*/
create table Tipo_Pelicula
(
   Pelicula_id          int not null,
   Tipo_id              int not null,
   Tipo_de_pelicula     text ,
   primary key (Tipo_id),
   foreign key (Pelicula_id) references Pelicula (Pelicula_id)
);


/*INSERCIONES DE CLIENTES*/
insert into Cliente (Cliente_id,Cliente_nombre,Cliente_Apellido,Cliente_cedula,Cliente_fecha_nacimiento) values (1,'Luis','Valencia',1312698424,'1998-01-25');
insert into Cliente (Cliente_id,Cliente_nombre,Cliente_Apellido,Cliente_cedula,Cliente_fecha_nacimiento) values (2,'Andres','Cedeno',1302568974,'1996-06-13');
insert into Cliente (Cliente_id,Cliente_nombre,Cliente_Apellido,Cliente_cedula,Cliente_fecha_nacimiento) values (3,'Michael','Pico',1302546325,'1990-06-12');
insert into Cliente (Cliente_id,Cliente_nombre,Cliente_Apellido,Cliente_cedula,Cliente_fecha_nacimiento) values (4,'Pedro','Barberan',1302585258,'1995-06-29');
insert into Cliente (Cliente_id,Cliente_nombre,Cliente_Apellido,Cliente_cedula,Cliente_fecha_nacimiento) values (5,'Roberto','Benitez',1302001563,'1999-04-25');
select * from Cliente;

/*INSERCIONES DE EMPLEADOS*/

insert into Empleado (Empleado_id,Empleado_cedula,Empleado_nombre,Empleado_apellido,Empleado_correo) values (1,1305632001,'Jose','Barberan','josebar@hotmail.com');
insert into Empleado (Empleado_id,Empleado_cedula,Empleado_nombre,Empleado_apellido,Empleado_correo) values (2,1302598666,'Federico','Fernandez','fedefer@hotmail.com');
insert into Empleado (Empleado_id,Empleado_cedula,Empleado_nombre,Empleado_apellido,Empleado_correo) values (3,1312058203,'Andres','Vinces','VinAndres@hotmail.com');
insert into Empleado (Empleado_id,Empleado_cedula,Empleado_nombre,Empleado_apellido,Empleado_correo) values (4,1310223568,'Pablo','Ruiz','PablorRZ@hotmail.com');
insert into Empleado (Empleado_id,Empleado_cedula,Empleado_nombre,Empleado_apellido,Empleado_correo) values (5,1303653320,'Jose','Perales','PeralesJose@hotmail.com');
select * from Empleado;
/*INSERCIONES DE ALQUILERES*/

insert into Alquiler(Cliente_id,Empleado_id,Aqluiler_id,Alquiler_fecha,Aqluiler_fecha_devolucion_estimada,Fecha_entrega_real,Costo_arriendo) 
values (1,1,1,'2021-05-25','2021-06-24','2021-06-25',25);
insert into Alquiler(Cliente_id,Empleado_id,Aqluiler_id,Alquiler_fecha,Aqluiler_fecha_devolucion_estimada,Fecha_entrega_real,Costo_arriendo) 
values (2,1,2,'2021-06-05','2021-07-04','2021-07-05',30);
insert into Alquiler(Cliente_id,Empleado_id,Aqluiler_id,Alquiler_fecha,Aqluiler_fecha_devolucion_estimada,Fecha_entrega_real,Costo_arriendo) 
values (2,5,3,'2021-07-25','2021-10-24','2021-10-25',80);
SELECT * FROM Alquiler;

/*INSERCIONES DE Devoluciones*/

insert into Devolucion_Pelicula(Aqluiler_id,Devolucion_id,Devolucion_Motivo,Devolucion_costo) values (1,1,'Termino de ver la pelicula antes del tiempo estimado',2);
insert into Devolucion_Pelicula(Aqluiler_id,Devolucion_id,Devolucion_Motivo,Devolucion_costo) values (2,2,'Le aburrio la pelicula',1);
insert into Devolucion_Pelicula(Aqluiler_id,Devolucion_id,Devolucion_Motivo,Devolucion_costo) values (3,3,'La pelicula no le interesa',3);

select * from Devolucion_Pelicula

/*INSERCIONES DE OBSERVACIONES*/


insert into Observacion(Aqluiler_id,Observacion_id,Observacion_Calificacion,Observacion_Descripcion) values (1,1,'Buena','Muy buena pelicula');
insert into Observacion(Aqluiler_id,Observacion_id,Observacion_Calificacion,Observacion_Descripcion) values (2,2,'Mala','Mal grabada la pelicula');
insert into Observacion(Aqluiler_id,Observacion_id,Observacion_Calificacion,Observacion_Descripcion) values (3,3,'Regular','Por rato se cortaba la pelicula');

select * from Observacion;

/*INSERCIONES DE Peliculas*/


insert into Pelicula(Aqluiler_id,Pelicula_id,Pelicula_titulo,Pelicula_Precio,Pelicula_Anio) values (1,1,'Rambo 1',5,2000);
insert into Pelicula(Aqluiler_id,Pelicula_id,Pelicula_titulo,Pelicula_Precio,Pelicula_Anio) values (1,2,'Rapidos y furiosos',6,2002);
insert into Pelicula(Aqluiler_id,Pelicula_id,Pelicula_titulo,Pelicula_Precio,Pelicula_Anio) values (2,3,'Kong: La isla calavera',5,2015);
insert into Pelicula(Aqluiler_id,Pelicula_id,Pelicula_titulo,Pelicula_Precio,Pelicula_Anio) values (2,4,'Jurassic World',5,2018);
insert into Pelicula(Aqluiler_id,Pelicula_id,Pelicula_titulo,Pelicula_Precio,Pelicula_Anio) values (3,5,'The Avengers',10,2016);
select * from Pelicula;

/*INSERCIONES DE tipo  de Peliculas*/


insert into Tipo_Pelicula(Pelicula_id,Tipo_id,Tipo_de_pelicula) values (1,1,'Entretenimiento');
insert into Tipo_Pelicula(Pelicula_id,Tipo_id,Tipo_de_pelicula) values (1,2,'Ciencia Ficcion');
insert into Tipo_Pelicula(Pelicula_id,Tipo_id,Tipo_de_pelicula) values (2,3,'Autos y carreras');
insert into Tipo_Pelicula(Pelicula_id,Tipo_id,Tipo_de_pelicula) values (3,4,'Aventuras');
select * from Tipo_Pelicula;


/*INSERCIONES DE PENALIZACION*/


insert into Penalizacion(Aqluiler_id,Penalizacion_id,Penalizacion_Motivo,Penalizacion_Precio) values (1,1,'Pelicula en mal estado',10);
insert into Penalizacion(Aqluiler_id,Penalizacion_id,Penalizacion_Motivo,Penalizacion_Precio) values (2,2,'Pelicula entregada despues de la fecha de entrga',20);
select * from Penalizacion;