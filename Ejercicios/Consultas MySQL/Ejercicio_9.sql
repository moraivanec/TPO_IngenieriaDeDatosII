USE TPO_Facturacion;

-- Listar los datos de todas las facturas que contengan productos de las marcas “Ipsum”.

SELECT *
FROM e01_factura f
WHERE EXISTS (
  SELECT 1
  FROM e01_detalle_factura d
  JOIN e01_producto p 
  ON d.codigo_producto = p.codigo_producto
  WHERE d.nro_factura = f.nro_factura AND p.marca = 'Ipsum'
);