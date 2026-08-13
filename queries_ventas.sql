select * from ventas_fact
select * from clientes
select * from productos

## ventas por categoria

SELECT p.producto, SUM(v.cantidad * p.precio_unitario) AS total_ventas
FROM ventas_fact v
JOIN productos p ON v.id_producto = p.id_producto
GROUP BY p.producto
ORDER BY total_ventas DESC;

## cliente que mas compra

SELECT TOP 1 
    c.cliente,
    SUM(v.cantidad) AS total_compras
FROM ventas_fact v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY c.cliente
ORDER BY total_compras DESC;

## cliente que mas ingresos genera a la empresa

SELECT TOP 1 
    c.cliente,
    SUM(v.cantidad * p.precio_unitario) AS total_ventas
FROM ventas_fact v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY c.cliente
ORDER BY total_ventas DESC;

## ranking de clientes

SELECT 
    c.cliente,
    SUM(v.cantidad) AS total_unidades,
    SUM(v.cantidad * p.precio_unitario) AS total_ventas
FROM ventas_fact v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY c.cliente
ORDER BY total_ventas DESC;

## producto mas rentable

SELECT TOP 1
    p.producto,
    SUM(v.cantidad * p.precio_unitario) AS total_ingresos
FROM ventas_fact v
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY p.producto
ORDER BY total_ingresos DESC;

## ranking completo

SELECT
    p.producto,
    SUM(v.cantidad) AS total_unidades,
    SUM(v.cantidad * p.precio_unitario) AS total_ingresos
FROM ventas_fact v
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY p.producto
ORDER BY total_ingresos DESC;

## ingresos por pais y ciudad

SELECT 
    v.pais,
    v.ciudad,
    SUM(v.cantidad * p.precio_unitario) AS total_ventas
FROM ventas_fact v
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY 
    v.pais,
    v.ciudad
ORDER BY 
    total_ventas DESC;


## mas completo

SELECT 
    v.pais,
    v.ciudad,
    SUM(v.cantidad) AS total_unidades,
    SUM(v.cantidad * p.precio_unitario) AS total_ventas,
    COUNT(v.id_venta) AS numero_ventas
FROM ventas_fact v
JOIN productos p 
    ON v.id_producto = p.id_producto
GROUP BY 
    v.pais,
    v.ciudad
ORDER BY 
    total_ventas DESC;


## top ciudad por pais

WITH ventas_ciudad AS (
    SELECT 
        v.pais,
        v.ciudad,
        SUM(v.cantidad * p.precio_unitario) AS total_ventas
    FROM ventas_fact v
    JOIN productos p 
        ON v.id_producto = p.id_producto
    GROUP BY v.pais, v.ciudad
)
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY pais ORDER BY total_ventas DESC) AS ranking
    FROM ventas_ciudad
) t
WHERE ranking = 1;