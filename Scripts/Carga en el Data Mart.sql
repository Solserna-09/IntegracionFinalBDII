DROP DATABASE IF EXISTS datamart_jardineria;
CREATE DATABASE datamart_jardineria;
USE datamart_jardineria;

-- Dimensión Clientes (ajustado a staging.pedido que tiene ID_cliente)
CREATE TABLE dim_clientes (
    ID_cliente INT PRIMARY KEY,
    nombreCliente VARCHAR(100),
    ciudad VARCHAR(50),
    pais VARCHAR(50)
);

-- Dimensión Productos (ajustado a staging.detalle_pedido que tiene ID_producto)
CREATE TABLE dim_productos (
    ID_producto INT PRIMARY KEY,
    nombreProducto VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2)
);

-- Dimensión Tiempo (derivada de staging.pedido.fecha_pedido)
CREATE TABLE dim_tiempo (
    ID_fecha INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    anio INT,
    mes INT,
    trimestre INT
);

-- Tabla de Hechos (ventas/pedidos)
CREATE TABLE hechos_ventas (
    ID_pedido INT,
    ID_cliente INT,
    ID_producto INT,
    ID_fecha INT,
    cantidad INT,
    montoTotal DECIMAL(10,2),
    PRIMARY KEY (ID_pedido, ID_producto),
    FOREIGN KEY (ID_cliente) REFERENCES dim_clientes(ID_cliente),
    FOREIGN KEY (ID_producto) REFERENCES dim_productos(ID_producto),
    FOREIGN KEY (ID_fecha) REFERENCES dim_tiempo(ID_fecha)
);

-- Cargar fechas únicas de pedidos
INSERT INTO dim_tiempo (fecha, anio, mes, trimestre)
SELECT DISTINCT p.fecha_pedido,
       YEAR(p.fecha_pedido),
       MONTH(p.fecha_pedido),
       QUARTER(p.fecha_pedido)
FROM staging.pedido p;
SELECT COUNT(*) AS fechas_cargadas FROM dim_tiempo;
SELECT MIN(fecha) AS min_fecha, MAX(fecha) AS max_fecha FROM dim_tiempo;


INSERT INTO dim_clientes (ID_cliente, nombreCliente, ciudad, pais)
SELECT DISTINCT c.ID_cliente, c.nombre_cliente, c.ciudad, c.pais
FROM jardineria.cliente c
ON DUPLICATE KEY UPDATE
    nombreCliente = c.nombre_cliente,
    ciudad = c.ciudad,
    pais = c.pais;


INSERT INTO dim_productos (ID_producto, nombreProducto, categoria, precio)
SELECT DISTINCT p.ID_producto, p.nombre, p.Categoria, p.precio_venta
FROM jardineria.producto p
ON DUPLICATE KEY UPDATE
    nombreProducto = p.nombre,
    categoria = p.Categoria,
    precio = p.precio_venta;


INSERT INTO hechos_ventas (ID_pedido, ID_cliente, ID_producto, ID_fecha, cantidad, montoTotal)
SELECT  p.ID_pedido,
        p.ID_cliente,
        d.ID_producto,
        t.ID_fecha,
        d.cantidad,
        d.montoTotal
FROM staging.pedido p
JOIN staging.detalle_pedido d   ON p.ID_pedido = d.ID_pedido
JOIN dim_tiempo t               ON t.fecha = p.fecha_pedido;

-- Conteo de registros en hechos
SELECT COUNT(*) AS total_hechos FROM hechos_ventas;

-- Ver primeras filas
SELECT * FROM hechos_ventas LIMIT 10;

-- Validar integridad: clientes
SELECT v.ID_cliente
FROM hechos_ventas v
LEFT JOIN dim_clientes c ON v.ID_cliente = c.ID_cliente
WHERE c.ID_cliente IS NULL;

-- Validar integridad: productos
SELECT v.ID_producto
FROM hechos_ventas v
LEFT JOIN dim_productos p ON v.ID_producto = p.ID_producto
WHERE p.ID_producto IS NULL;

-- Validar integridad: fechas
SELECT v.ID_fecha
FROM hechos_ventas v
LEFT JOIN dim_tiempo t ON v.ID_fecha = t.ID_fecha
WHERE t.ID_fecha IS NULL;