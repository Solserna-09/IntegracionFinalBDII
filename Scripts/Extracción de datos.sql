-- Crear base de datos staging
DROP DATABASE IF EXISTS staging;
CREATE DATABASE staging;
USE staging;

-- Crear tablas staging copiando la estructura de Jardinería
CREATE TABLE pedido LIKE jardineria.pedido;
CREATE TABLE detalle_pedido LIKE jardineria.detalle_pedido;
CREATE TABLE pago LIKE jardineria.pago;

-- Insertar datos desde la BD origen (jardineria)
INSERT INTO pedido SELECT * FROM jardineria.pedido;
INSERT INTO detalle_pedido SELECT * FROM jardineria.detalle_pedido;
INSERT INTO pago SELECT * FROM jardineria.pago;

-- Verificación
SHOW TABLES;
SELECT COUNT(*) AS total_pedidos FROM pedido;
SELECT COUNT(*) AS total_detalles FROM detalle_pedido;
SELECT COUNT(*) AS total_pagos FROM pago;

DESC staging.detalle_pedido;