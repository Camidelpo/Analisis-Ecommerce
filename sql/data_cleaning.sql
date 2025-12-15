🧠 SQL – data_cleaning.sql
-- Normalización de estados de pago
SELECT
    payment_id,
    TRIM(UPPER(estado_pago)) AS estado_pago,
    metodo_pago,
    monto,
    fecha_pago
FROM pagos;

-- Validación de pagos fallidos
SELECT *
FROM pagos
WHERE TRIM(UPPER(estado_pago)) = 'FALLIDOS';

-- Control de montos inválidos
SELECT *
FROM pagos
WHERE monto IS NULL
   OR monto <= 0;

-- Unificación de métodos de pago
SELECT
    payment_id,
    CASE
        WHEN metodo_pago IN ('Tarjeta Crédito', 'Tarjeta Débito') THEN 'Tarjeta'
        ELSE metodo_pago
    END AS metodo_pago,
    estado_pago,
    monto,
    fecha_pago
FROM pagos;

-- Vista final para análisis
CREATE VIEW pagos_limpios AS
SELECT
    payment_id,
    TRIM(UPPER(estado_pago)) AS estado_pago,
    CASE
        WHEN metodo_pago IN ('Tarjeta Crédito', 'Tarjeta Débito') THEN 'Tarjeta'
        ELSE metodo_pago
    END AS metodo_pago,
    monto,
    fecha_pago
FROM pagos
WHERE monto IS NOT NULL
  AND monto > 0
