USE TPO_Facturacion;

-- Devolver todos los clientes, con la cantidad de facturas que tienen registradas (si no tienen considerar cantidad en 0)

SELECT nro_cliente, COUNT(nro_factura) AS cant_facturas
FROM E01_FACTURA
GROUP BY nro_cliente;