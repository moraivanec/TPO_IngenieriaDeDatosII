USE TPO_Facturacion;

-- Obtener todos los clientes que tengan registrada al menos una factura.

SELECT *
FROM e01_cliente c
WHERE EXISTS (
   SELECT 1
   FROM e01_factura f
   WHERE f.nro_cliente = c.nro_cliente
);