USE TPO_Facturacion;

-- Implementar la funcionalidad que permita crear nuevos productos y modificar los ya
-- existentes. Tener en cuenta que el precio de un producto es sin IVA.

INSERT INTO e01_producto
(codigo_producto, marca, nombre, descripcion, precio, stock)
VALUES
(101, 'Samsung', 'Monitor', 'Monitor LED 24 pulgadas', 800000.00, 20);

-- Modificar producto
UPDATE e01_producto
SET marca = 'Samsung',
    nombre = 'Monitor',
    descripcion = 'Monitor LED 27 pulgadas',
    precio = 820000.00,
    stock = 15
WHERE codigo_producto = 101;