USE TPO_Facturacion;

-- Obtener los datos de los clientes junto con sus teléfonos.

SELECT * 
FROM e01_cliente c
JOIN e01_telefono t 
ON c.nro_cliente = t.nro_cliente;