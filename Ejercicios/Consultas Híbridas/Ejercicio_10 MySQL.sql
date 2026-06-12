USE TPO_Facturacion;

-- Mostrar nombre y apellido de cada cliente junto con lo que gastó en total, con IVA incluido.

SELECT nro_cliente, SUM(total_con_iva) AS total_gastado
FROM E01_FACTURA
GROUP BY nro_cliente;