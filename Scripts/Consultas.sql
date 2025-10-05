
-- Conteos en STAGING
SELECT COUNT(*) AS pedidos_staging FROM staging.pedido;
SELECT COUNT(*) AS detalle_pedidos_staging FROM staging.detalle_pedido;
SELECT COUNT(*) AS pagos_staging FROM staging.pago;

-- Conteos en JARDINERIA
SELECT COUNT(*) AS pedidos_jardineria FROM jardineria.pedido;
SELECT COUNT(*) AS detalle_pedidos_jardineria FROM jardineria.detalle_pedido;
SELECT COUNT(*) AS pagos_jardineria FROM jardineria.pago;

-- Validar diferencias
-- Pedidos que faltan
SELECT p.* 
FROM jardineria.pedido p
LEFT JOIN staging.pedido s ON p.ID_pedido = s.ID_pedido
WHERE s.ID_pedido IS NULL;

-- Detalle de pedidos que faltan
SELECT dp.* 
FROM jardineria.detalle_pedido dp
LEFT JOIN staging.detalle_pedido sp 
       ON dp.ID_pedido = sp.ID_pedido AND dp.ID_producto = sp.ID_producto
WHERE sp.ID_pedido IS NULL;

-- Pagos que faltan
SELECT j.* 
FROM jardineria.pago j
LEFT JOIN staging.pago s ON j.ID_pago = s.ID_pago
WHERE s.ID_pago IS NULL;
