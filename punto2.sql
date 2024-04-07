drop database if exists centro;
CREATE DATABASE centro;

USE centro;

-- Creación de tablas
create table obra_social (
    nombre char(16), 
    cuit int, 
    plan ENUM(
        'estandar', 'plata', 'oro', 'platino'
    ),
    PRIMARY KEY (cuit)
);

create table paciente (
    nombre char(16), 
    apellido char(16), 
    dni int,
    cuit int,
    telefono char(12), 
    mail char(30),
    PRIMARY KEY (dni),
    FOREIGN KEY (cuit) REFERENCES obra_social(cuit)
);

create table agenda (
    franja_inicio DATETIME, 
    franja_fin DATETIME,
    id int,
    PRIMARY KEY(id)
);

create table turno (
    fecha date, 
    estado ENUM(
        'confirmado', 'reservado', 'cancelado'
    ),
    id int,
    agenda int,
    PRIMARY KEY (id),
    FOREIGN KEY (agenda) REFERENCES agenda(id)
);

create table medico (
    nombre char(16), 
    apellido char(16), 
    dni int, 
    telefono char(12),
    PRIMARY KEY (dni)
);

create table equipo_medico (
    nombre char(20), 
    id int,
    PRIMARY KEY (id)
);

create table servicio_medico (
    nombre ENUM(
        'Ecografia', 'Tomografia', 'Radiologia'
    ), 
    id int,
    equipo_asignado int,
    PRIMARY KEY (id),
    FOREIGN KEY (equipo_asignado) REFERENCES equipo_medico(id)
);

create table centro (
    nombre char(30), 
    direccion char(30), 
    telefono char(12), 
    id int,
    PRIMARY KEY (id)
);

-- Inserts...

insert into obra_social values ('Galeno', 242947954, 'estandar');
insert into obra_social values ('OSDE', 312345678, 'oro');

insert into paciente values ('Ignacio', 'Barrientos', 42947954, 242947954, '1164925997', 'ifbarrientos@outlook.com');
insert into paciente values ('John', 'Doe', 12345678, 312345678, '1125746963', 'doejohn@gmail.com');

insert into agenda values ('2024-04-12 08:00:00', '2024-04-12 14:00:00', 1);
insert into agenda values ('2024-04-15 08:00:00', '2024-04-12 14:00:00', 2);

insert into turno values ('2024-04-12', 'reservado', 1, 1);
insert into turno values ('2024-04-15', 'cancelado', 2, 2);

insert into medico values ('Jane', 'Doe', 987654321, '1167983554');
insert into medico values ('Luis', 'Lopez', 628447806, '1164352964');

insert into equipo_medico values ('Radiologia_1', 4);
insert into equipo_medico values ('Tomografia_1', 5);
insert into equipo_medico values ('Ecografia_1', 6);

insert into servicio_medico values ('Ecografia', 1, 6);
insert into servicio_medico values ('Tomografia', 2, 5);
insert into servicio_medico values ('Radiologia', 3, 4);

insert into centro values ('Sede Malvinas Argentinas', 'Jose María Gütierrez 1150', 1168476247, 1);
