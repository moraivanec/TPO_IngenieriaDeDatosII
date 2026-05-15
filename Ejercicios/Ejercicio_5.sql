USE TPO_Facturacion;

-- Identificar todos los clientes que no tengan registrada ninguna factura.

SELECT *
FROM e01_cliente c
WHERE NOT EXISTS (
   SELECT 1
   FROM e01_factura f
   WHERE f.nro_cliente = c.nro_cliente
);
