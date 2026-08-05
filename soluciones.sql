-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Agustin Burkhard
-- Fecha: 5-8-2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

-- [Tu consulta aquí]

SELECT p.producto_id AS id_producto,
	   p.nombre AS nombre_producto,
	   p.categoria AS categoria,
	   p.precio AS precio,
	   v.venta_id AS ventas,
	   v.cantidad AS cantidad,
	   v.fecha_venta AS fecha_venta

FROM productos p
LEFT JOIN ventas v 
	ON p.producto_id = v.producto_id






-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

-- [Tu consulta aquí]

SELECT v.producto_id AS id_productos,
	   v.venta_id AS ventas,
	   v.cantidad AS cantidad,
	   p.producto_id AS id_producto,
	   p.nombre AS nombre_producto,
	   p.categoria AS categoria

FROM productos p
RIGHT JOIN ventas v
	ON v.producto_id = p.producto_id
WHERE p.producto_id IS NULL;


-- El porducto con ID 999 no esta registrado en el catalogo







-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

-- [Tu consulta aquí]

SELECT p.producto_id AS id_producto_catalogo,
	   p.nombre AS nombre_producto,
	   p.categoria AS categoria,
	   p.precio AS precio,
	   v.cliente_id AS cliente,
	   v.venta_id AS ventas,
	   v.cantidad AS cantidad,
	   v.fecha_venta AS fecha_venta,
	   v.producto_id AS id_producto_venta

FROM productos p
FULL OUTER JOIN ventas v 
	ON p.producto_id = v.producto_id;










