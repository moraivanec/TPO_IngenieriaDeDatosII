USE TPO_Facturacion;

-- Devolver todos los clientes, con la cantidad de facturas que tienen registradas (si no tienen considerar cantidad en 0)

SELECT c.nro_cliente, c.nombre, COUNT(f.nro_factura) AS cant_facturas
FROM e01_cliente c
LEFT JOIN e01_factura f
ON c.nro_cliente = f.nro_cliente
GROUP BY c.nro_cliente, c.nombre;
