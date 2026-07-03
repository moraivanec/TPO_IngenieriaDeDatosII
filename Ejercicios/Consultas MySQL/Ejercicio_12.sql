USE TPO_Facturacion;

-- Se necesita una vista que devuelva todos los productos que aún no han sido facturados

CREATE VIEW productos_no_facturados AS
SELECT * 
FROM e01_producto p 
WHERE NOT EXISTS (
     SELECT 1
     FROM e01_detalle_factura d
     WHERE d.codigo_producto = p.codigo_producto
);