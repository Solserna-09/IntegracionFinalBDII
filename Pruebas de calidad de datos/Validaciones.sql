-- Conteo en tablas del Data Mart
SELECT 'dim_clientes', COUNT(*) FROM dim_clientes
UNION ALL
SELECT 'dim_productos', COUNT(*) FROM dim_productos
UNION ALL
SELECT 'dim_tiempo', COUNT(*) FROM dim_tiempo
UNION ALL
SELECT 'hechos_ventas', COUNT(*) FROM hechos_ventas;

-- Revisar algunos registros de hechos
SELECT * FROM hechos_ventas LIMIT 10;

-- Validar integridad de claves foráneas
SELECT v.ID_cliente FROM hechos_ventas v
LEFT JOIN dim_clientes c ON v.ID_cliente = c.ID_cliente
WHERE c.ID_cliente IS NULL;

SELECT v.ID_producto FROM hechos_ventas v
LEFT JOIN dim_productos p ON v.ID_producto = p.ID_producto
WHERE p.ID_producto IS NULL;

SELECT v.ID_fecha FROM hechos_ventas v
LEFT JOIN dim_tiempo t ON v.ID_fecha = t.ID_fecha
WHERE t.ID_fecha IS NULL;




