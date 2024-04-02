drop database if exists centro;
CREATE DATABASE centro;

USE centro;

-- Creación de tablas

create table paciente (nombre char(16), apellido char(16), dni int, telefono char(12), mail char(20));

create table obra_social (nombre char(16), cuit int, plan ENUM('estandar', 'plata', 'oro', 'platino'));

create table turno (fecha date, estado ENUM('confirmado', 'reservado', 'cancelado'));

create table medico (nombre char(16), apellido char(16), dni int, telefono char(12));

create table servicio_medico (nombre char(20), id int);

create table equipo_medico (nombre char(20), id int);

create table agenda (disponible boolean, franja_inicio date, franja_fin date);

create table centro (nombre char(20), direccion char(20), id int);

-- Inserts...

