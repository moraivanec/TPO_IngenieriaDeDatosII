USE TPO_Facturacion;

-- Identificar todos los clientes que no tengan registrada ninguna factura.

SELECT DISTINCT nro_cliente
FROM E01_FACTURA;