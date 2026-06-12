USE TPO_Facturacion;

-- Seleccionar los productos que han sido facturados al menos 1 vez.

SELECT p.*
FROM e01_producto p 
WHERE EXISTS (
  SELECT 1
  FROM e01_detalle_factura d
  WHERE d.codigo_producto = p.codigo_producto
);