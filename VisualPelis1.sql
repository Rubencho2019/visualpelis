-- crea la database de la tabla --

create database pelis;
use pelis;

-- crea la tabla cartelera --

create table cartelera
(
idcartelera int not null auto_increment,
nombrepelicula varchar (40),
disponible boolean ,
nodisponible boolean,
pagiginaweb varchar(150),
hora time, 


primary key(idcartelera)
);

-- crea la tabla categoria o genero de la pelicula--

create table categoriapeli
(
idcategoriapeli int not null auto_increment,
GeneroDePeliculas varchar(200) not null, 

primary key (idcategoriapeli)
);


-- crea la tabla de  el titulo de la pelicula--

 create table titulo
 (
 idtitulo int not null auto_increment,
 nombrePelicula varchar(200),
 
 primary key(idtitulo)
 );
 
 -- crea la tabla del titulo original de la pelicula --
 

 
 -- crea el año o fecha de lanzamiento --
 
 create table año
 (
 idaño int not null auto_increment,
 fecha time,
 
 primary key(idaño)
 );
 

-- crea la tabla de el nombre del director de la pelicula -- 
 
 create table Director
 (
 idDirector int not null auto_increment,
 NombreDelDirector varchar(100),
 
 primary key(idDirector)
 );
 
 -- crea la tabla del formato de la pelicula --
 
 create table soportePeli
 (
 idsoportePeli int not null auto_increment,
 formato varchar(20),
 
 primary key(idsoportePeli)
 );
 
 create table PrecioPeli
 (
 idPrecioPeli int not null auto_increment,
 precioPelicula int(5),
 
 primary key(idPrecioPeli)
 );
 
 create table cliente
 (
 idcliente int not null auto_increment,
 codCliente int(3),
 
 primary key(idcliente)
 );
 
 create table persona
 (
 idpersona int not null auto_increment,
 nombres varchar(50),
 apellidos varchar(50),
 telefono int(30),
 direccion varchar(30),
 Email varchar(100),
 
 primary key(idpersona)
 );

-- creacion de las llaves foraneas--

alter table cartelera add column idcategoriapeli int(3)not null;
alter table cartelera add constraint  FK_idcategoriapeli
foreign key (idcategoriapeli)
references categoriapeli(idcategoriapeli);

alter table cartelera add column idtitulo int(3)not null;
alter table cartelera add constraint FK_idtitulo
foreign key(idtitulo)
references titulo(idtitulo);


alter table cartelera add column idaño int(3) not null;
alter table cartelera add constraint FK_idaño
foreign key(idaño)
references año(idaño);


alter table cartelera add column idDirector int(3)not null;
alter table cartelera add constraint FK_idDirector
foreign key(idDirector)
references Director(idDirector);

alter table cartelera add column idsoportePeli int(3)not null;
alter table cartelera add constraint FK_idsoportePeli
foreign key(idsoportePeli)
references soportepeli(idsoportePeli);

alter table cartelera add column idPrecioPeli int(3) not null;
alter table cartelera add constraint FK_idPrecioPeli
foreign key(idPrecioPeli)
references PrecioPeli(idPrecioPeli);

alter table persona add column idcliente int(3) not null;
alter table persona add constraint FK_idcliente
foreign key(idcliente)
references cliente(idcliente);


insert into cartelera(nombrePelicula,fecha,nombreDelDirector,formato,precioPelicula)
values('Dracula','2002','Rodolfo Palomino','mp3','2300');

insert into categoriaPeli(GeneroDePeliculas)
values("peliculaActual"), 
("peliculaAntigua"),
("estrenos"), 
("clasicos"), 
("mudas"), 
("sonoras"),
("peliculasEnBlancoYnegro"),
("romanticas"), 
("DeAccion"), 
("DeAventuras"),
("comedia"), 
("drama"), 
("DeTerror"), 
("musicales"), 
("cienciaFiccion"),
("DeGuerraObelicas"), 
("peliculasDelOeste"),
("Suspenso"), 
("Infantiles"), 
("Adultos");

drop database pelis;
