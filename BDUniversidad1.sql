use master
go


if DB_ID('BDUniversidad') is not null
	drop database BDUniversidad
go


create database BDUniversidad
go

use BDUniversidad
go


-- crear tablas
if OBJECT_ID('TEscuela') is not null
	drop table TEscuela
go

create table TEscuela
(
	CodEscuela char(3) primary key,
	Escuela varchar(50),
	Facultad varchar(50)
)
go

if OBJECT_ID('TAlumno') is not null
	drop table TAlumno
go

create table TAlumno
(
	CodAlumno char(5) primary key,
	Apellidos varchar(50),
	Nombres varchar(50),
	LugarNac varchar(50),
	FechaNac datetime,
	CodEscuela char(3),
	foreign key (CodEscuela) references TEscuela
)

-- Inserción de datos
insert into TEscuela values('E01','Civil','Ingenieria')
insert into TEscuela values('E02','Sistemas','Ingenieria')
insert into TEscuela values('E03','Arquitectura','Ingenieria')
insert into TEscuela values('E04','Industrial','Ingenieria')
insert into TEscuela values('E05','Ambiental','Ingenieria')
go

insert into TAlumno values('A1322','Perez','Jose luis','cusco','2007-05-08 12:35:29','E02')
insert into TAlumno values('A1323','Huaman','Maribel','cusco','2007-05-08 12:35:29','E04')
insert into TAlumno values('A1314','Cusi','Mario','cusco','2007-05-08 12:35:29','E01')
insert into TAlumno values('A1325','Huaro','Abel','cusco','2007-05-08 12:35:29','E03')
go

select * from TEscuela
go

select * from TAlumno
go
