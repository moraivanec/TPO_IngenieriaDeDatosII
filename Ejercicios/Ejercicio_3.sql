USE TPO_Facturacion;

-- Mostrar cada teléfono junto con los datos del cliente.

SELECT *
FROM e01_telefono t
JOIN e01_cliente c
ON t.nro_cliente = c.nro_cliente;