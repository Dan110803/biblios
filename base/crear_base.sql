CREATE DATABASE IF NOT EXISTS biblioteca;

USE biblioteca;

CREATE TABLE autor (
    id_autor  INTEGER NOT NULL,
    nombres   VARCHAR2(40) NOT NULL,
    apellidos VARCHAR2(40) NOT NULL,
    PRIMARY KEY ( id_autor )
);


CREATE TABLE autorxlibro (
    id_libro          INTEGER NOT NULL,
    id_autor          INTEGER NOT NULL,
    tipo_contribucion VARCHAR2 (50) NOT NULL,
    libro_id_libro    INTEGER NOT NULL,
    autor_id_autor    INTEGER NOT NULL,
    PRIMARY KEY ( id_libro,id_autor )

);


CREATE TABLE editorial (
    id_editorial INTEGER NOT NULL,
    nombre       VARCHAR2(40) NOT NULL,
    PRIMARY KEY ( id_editorial )
);



CREATE TABLE ejemplar (
    codigo                 INTEGER NOT NULL,
    estado                 VARCHAR2(30) NOT NULL,
    costo                  INTEGER NOT NULL,
    editorial_id_editorial INTEGER NOT NULL,
    libro_id_libro         INTEGER NOT NULL,
    PRIMARY KEY ( codigo,editorial_id_editorial )
);


CREATE TABLE libro (
    id_libro             INTEGER NOT NULL,
    nombre               VARCHAR2(80) NOT NULL,
    autores              VARCHAR2(80) NOT NULL,
    codigo_barras        VARCHAR2(40) NOT NULL,
    numero_de_indizacion INTEGER NOT NULL,
    PRIMARY KEY ( id_libro )
);



CREATE TABLE multa (
    id_multa       INTEGER NOT NULL,
    valor          INTEGER NOT NULL,
    usuario_codigo INTEGER NOT NULL,
    estado         VARCHAR2(20) NOT NULL,
    PRIMARY KEY ( id_multa )
);


CREATE TABLE prestamo (
    id_prestamo    INTEGER NOT NULL,
    fecha_inicial  DATE NOT NULL,
    fecha_final    DATE NOT NULL,
    usuario_codigo INTEGER NOT NULL,
    PRIMARY KEY ( id_prestamo )
);


CREATE TABLE reserva (
    id_reserva    INTEGER NOT NULL,
    fecha_inicial DATE NOT NULL,
    fecha_final   DATE NOT NULL
);

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( id_reserva );


CREATE TABLE usuario (
    codigo             INTEGER NOT NULL,
    nombres            VARCHAR2(20) NOT NULL,
    apellidos          VARCHAR2(40) NOT NULL,
    direccion          VARCHAR2(40) NOT NULL,
    plan               VARCHAR2(20) NOT NULL,
    tipo               VARCHAR2(20) NOT NULL,
    reserva_id_reserva INTEGER NOT NULL
    PRIMARY KEY(codigo);
);
