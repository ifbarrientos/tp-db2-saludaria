drop database if exists centro;
CREATE DATABASE centro;

USE centro;

-- Creación de tablas

create table paciente (nombre char(16), apellido char(16), dni int, telefono char(12), mail char(30));

create table obra_social (nombre char(16), cuit int, plan ENUM('estandar', 'plata', 'oro', 'platino'));

create table turno (fecha date, estado ENUM('confirmado', 'reservado', 'cancelado'));

create table medico (nombre char(16), apellido char(16), dni int, telefono char(12));

create table servicio_medico (nombre ENUM(
    'Ecografia', 'Tomografia', 'Radiologia'
), id int);

create table equipo_medico (nombre char(20), id int);

create table agenda (franja_inicio DATETIME, franja_fin DATETIME);

create table centro (nombre char(20), direccion char(20), telefono char(12), id int);

-- Inserts...

insert into paciente values ('Ignacio', 'Barrientos', 42947954, '1164925997', 'ifbarrientos@outlook.com');

insert into paciente values ('John', 'Doe', 123456789, '1125746963', 'doejohn@gmail.com');


insert into obra_social values ('Galeno', 2042947954, 'estandar');

insert into obra_social values ('OSDE', 5012345678900, 'oro');


insert into turno values ('2024/04/12', 'reservado');

insert into turno values ('2024/04/15', 'cancelado');


insert into medico values ('Jane', 'Doe', 987654321, '1167983554');

insert into medico values ('Luis', 'Lopez', 628447806, '1164352964');


insert into servicio_medico values ('Ecografia', 1);

insert into servicio_medico values ('Tomografia', 2);

insert into servicio_medico values ('Radiologia', 3);


insert into equipo_medico values ('Radiologia_1', 4);

insert into equipo_medico values ('Tomografia_1', 5);

insert into equipo_medico values ('Ecografia_1', 6);


insert into agenda values ('2024/04/12 08:00:00', '2024/04/12 14:00:00');
insert into agenda values ('2024/04/15 08:00:00', '2024/04/12 14:00:00');

insert into centro values ('Sede Malvinas Argentinas', 'Jose María Gütierrez 1150', 1168476247, 1);