# Trabajo Práctico Obligatorio - Sistema de Facturación
**Ingeniería de Datos II - UADE (1er Cuatrimestre 2026)**

## Descipción del Trabajo
Este trabajo práctico consiste en el desarrollo de un sistema de facturación que permite gestionar clientes, productos y ventas.
El sistema controla el stock de productos, calcula el monto total de las facturas aplicando IVA y descuentos, y administra la información mediante una arquitectura de **persistencia políglota**, usando dos bases de datos distintas:

- **MySQL** como base de datos relacional.
- **MongoDB** como base de datos no relacional.

## Persistencia Polígota
### MySQL
Usamos MySQL para almacenar la información relacionada con productos, facturas y detalle de factura.

Tablas implementadas:

- "e01_producto"
- "e01_factura"
- "e01_detalle_factura"

###MongoDB
Usamos MongoDB para almacenar la información de los clientes con sus teléfonos, donde cada cliente se guarda como un documento y sus teléfonos se almacenan dentro de un arreglo en el mismo documento.

Colección implementada:
- "clientes"

## Justificación 
Elegimos **MySQL** para almacenar productos, las facturas y los detalles de las facturas, porque son datos estructurados y con relaciones claras entre sí. Además, MySQL nos permite trabajar con claves primarias y foráneas, lo que es importante para asegurarnos que cada factura esté bien asociada a sus productos y detalles. Así podemos mantener la integridad y la organización de la información.

Por otro lado, usamos **MongoDB** para guardar clientes junto con sus teléfonos. Decidimos hacer esto porque un cliente puede tener uno o varios números de teléfono, y en MongoDB esta información se puede almacenar dentro del mismo documento del cliente. Así evitamos separar los teléfonos en otra tabla.

## Integrantes
- Ivanec Mora Amalia
- Legajo: 1179661
- Peralta Perez Luka Andrés
- Legajo: 1170204
