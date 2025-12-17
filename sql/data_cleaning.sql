
--- Normalizacion estado de pago ---
SELECT
    PagoID,
    TRIM((estadopago)) AS estado_pago,
    metodopago,
    monto,
    fechapago
FROM pagos;

-- Verificacion de los estados de pago --

SELECT DISTINCT EstadoPago FROM pagos

-- No hay valores menores a 0 ---

SELECT COUNT(*) FROM pagos WHERE Monto <= 0

-- No hay valores nulos ---

SELECT COUNT(*) FROM pagos WHERE Monto is null

-- Validacion de pagos fallidos y exitosos -- 

SELECT count (pagoID) as total_pagos, EstadoPago, Monto
from pagos
where estadopago in ('Fallido', 'Exitoso')
group by EstadoPago, Monto


-- Validacion de metodos de pagos --

SELECT DISTINCT metodopago FROM pagos
--

-- Creacion vista -- 

CREATE VIEW tabla_hechos AS
SELECT 
    p.PagoID,
    p.Monto AS MontoPago,
    p.FechaPago,
    p.MetodoPago,
    p.EstadoPago,
   
    ISNULL(p.OrdenID, 0) AS OrdenID,
    ISNULL(do.ProductoID, 0) AS ProductoID,
    ISNULL(do.Precio_Unitario * do.Cantidad, p.Monto) AS MontoLinea,
    o.UsuarioID
FROM Pagos p --
LEFT JOIN Ordenes o ON p.OrdenID = o.OrdenID --
LEFT JOIN detalle_orden do ON o.OrdenID = do.OrdenID --
LEFT JOIN Productos prod ON do.ProductoID = prod.ProductoID; --

--

-- Validacion monto total y transacciones -- 

SELECT 
    SUM(MontoPago) AS Monto_Total_Fallido,
    COUNT (distinct pagoID) AS Cantidad_Transacciones
FROM tabla_hechos
WHERE EstadoPago = 'FALLIDO';

-- Total pagos -- 

select count (distinct PagoID) from tabla_hechos
