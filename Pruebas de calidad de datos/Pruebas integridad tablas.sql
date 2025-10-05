
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
SELECT v.ID_fecha FROM hechos_ventas v
LEFT JOIN dim_tiempo t ON v.ID_fecha = t.ID_fecha WHERE t.ID_fecha IS NULL;