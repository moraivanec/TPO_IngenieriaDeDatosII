USE TPO_Facturacion;

-- Mostrar nombre y apellido de cada cliente junto con lo que gastó en total, con IVA incluido.

SELECT c.nombre, c.apellido, COALESCE(SUM(f.total_con_iva), 0) AS total_gastado
FROM e01_cliente c
LEFT JOIN e01_factura f 
ON c.nro_cliente = f.nro_cliente
GROUP BY c.nro_cliente, c.nombre, c.apellido;