USE TPO_Facturacion;

-- Listar los datos de todas las facturas que hayan sido compradas por el cliente de nombre "Kai" y apellido "Bullock".

SELECT f.*
FROM e01_factura f
JOIN e01_cliente c
ON f.nro_cliente = c.nro_cliente
WHERE nombre = 'Kai' AND apellido = 'Bullock';