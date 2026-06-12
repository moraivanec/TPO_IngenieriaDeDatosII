-- Listar los datos de todas las facturas que hayan sido compradas por el cliente de nombre "Kai" y apellido "Bullock".

USE TPO_Facturacion;

SELECT *
FROM E01_FACTURA
WHERE nro_cliente = 5;

-- Primero consultamos la colección de clientes en MongoDB para obtener el nro_cliente de Kai Bullock
-- Después, con ese número, consultamos en MySQL las facturas que fueron compradas por la clienta
