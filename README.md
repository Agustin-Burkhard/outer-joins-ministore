# outer-joins-ministore

# Outer Joins - MiniStore

## Autor
Agustín Burkhard

## Objetivo

En este ejercicio se utilizaron LEFT JOIN, RIGHT JOIN y FULL OUTER JOIN para analizar la relación entre el catálogo de productos y las ventas de una tienda.

---

## 1. ¿Por qué usé LEFT JOIN y no INNER JOIN?

Utilicé LEFT JOIN porque necesitaba mostrar todos los productos del catálogo, incluso aquellos que nunca fueron vendidos.

Si hubiera utilizado INNER JOIN, solo aparecerían los productos que tienen al menos una venta registrada y se perderían los productos 108 y 109.

---

## 2. ¿Por qué usé RIGHT JOIN?

Utilicé RIGHT JOIN porque necesitaba conservar todas las ventas y verificar si alguna correspondía a un producto inexistente.

En mi consulta la tabla `productos` quedó a la izquierda y la tabla `ventas` a la derecha, por lo que se conservaron todas las ventas.

---

## 3. ¿Qué representan los valores NULL?

En la Consulta 1, un `NULL` en `venta_id` significa que ese producto nunca fue vendido.

En la Consulta 2, un `NULL` en las columnas de `productos` significa que existe una venta cuyo producto no figura en el catálogo, como ocurre con el producto 999.

---

## 4. ¿Cuándo usaría FULL OUTER JOIN?

Utilizaría FULL OUTER JOIN cuando necesite realizar una auditoría completa de los datos, mostrando tanto los productos sin ventas como las ventas sin producto asociado, sin perder información de ninguna de las dos tablas.
