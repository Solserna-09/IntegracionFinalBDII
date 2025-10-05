USE staging;
SHOW TABLES;


USE staging;

-- Desactivar safe mode
SET SQL_SAFE_UPDATES = 0;

-- 1. Normalizar estados de pedido (todo en mayúsculas y sin espacios extra)
UPDATE pedido
SET estado = UPPER(TRIM(estado))
WHERE ID_pedido > 0;

-- 2. Corregir precios negativos en detalle_pedido
UPDATE detalle_pedido
SET precio_unidad = NULL
WHERE precio_unidad < 0;


-- 3. Calcular montoTotal = cantidad * precio_unidad
ALTER TABLE staging.detalle_pedido ADD COLUMN montoTotal DECIMAL(10,2);

UPDATE detalle_pedido
SET montoTotal = cantidad * precio_unidad
WHERE cantidad IS NOT NULL AND precio_unidad IS NOT NULL;

-- Reactivar safe mode
SET SQL_SAFE_UPDATES = 1;
