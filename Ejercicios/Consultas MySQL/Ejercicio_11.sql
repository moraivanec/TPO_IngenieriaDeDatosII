USE TPO_Facturacion;

-- Se necesita una vista que devuelva los datos de las facturas ordenadas por fecha

CREATE VIEW facturas_ordenadas AS
SELECT *
FROM e01_factura
ORDER BY fecha ASC;


