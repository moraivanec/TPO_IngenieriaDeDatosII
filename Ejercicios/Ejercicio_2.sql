USE TPO_Facturacion;

-- Obtener el/los teléfono/s y el número de cliente del cliente con nombre “Jacob” y apellido “Cooper”.

SELECT c.nro_cliente, t.codigo_area, t.nro_telefono
FROM e01_telefono t
JOIN e01_cliente c
ON t.nro_cliente = c.nro_cliente
WHERE nombre = 'Jacob' AND apellido = 'Cooper';
