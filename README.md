# 📊 Análisis del Flujo de Pagos en Ecommerce


## 📌 Descripción del Proyecto

Este proyecto se centra en el análisis del flujo de pagos de una empresa dedicada a la venta y distribución en línea de productos diversos, la cual ha experimentado una disminución sostenida en sus ventas durante los últimos tres años.


---

## 🎯 Objetivos

Los objetivos del proyecto, definidos bajo la metodología SMART, se orientan a:

* Identificar patrones de comportamiento en las transacciones.
* Detectar fallos en la efectivización de los pagos.
* Medir el impacto económico de las transacciones fallidas.
* Anticipar escenarios futuros que permitan mejorar la conversión y el proceso de cobro.

---

🧭 Metodología de Análisis

* El proyecto se desarrolló siguiendo un enfoque cuantitativo basado en datos históricos de pagos y órdenes:

* Extracción, limpieza y modelado de datos con SQL.

* Análisis exploratorio y diagnóstico para identificar patrones y causas de pagos fallidos.

* Definición y cálculo de KPIs de negocio relacionados con conversión y efectividad de pagos.

* Medición del impacto económico de las transacciones no efectivizadas.

* Proyección a corto plazo (6 meses) mediante forecasting en Power BI.

* Visualización de resultados y comunicación de insights a través de un dashboard interactivo.

---

## 🔍 Hipótesis

El análisis de los pagos históricos permitirá identificar fallos críticos en el proceso de cobro y estimar su impacto en la conversión y las ventas a corto plazo.

---

## 🛠️ Tecnologías Utilizadas

* **SQL**: extracción, limpieza y transformación de datos históricos de pagos y órdenes.
* **Power BI**: modelado de datos, visualización, análisis exploratorio y proyección (forecasting).

---

## 📊 KPIs Analizados

* Tasa de pagos exitosos.
* Porcentaje de pagos fallidos.
* Monto asociado a pagos no efectivizados.
* Distribución de fallos por método de pago.
* Evolución temporal de las transacciones.

---


## 🖼️ Dashboard

El análisis fue visualizado mediante un dashboard desarrollado en Power BI. A continuación se presentan capturas representativas del tablero:

[Dashboard](https://github.com/Camidelpo/Analisis-Ecommerce/tree/main/Dashboard)

---

## 📌 Conclusiones del Proyecto

### 📊 Principales hallazgos

* Se identificó una proporción significativa de pagos fallidos con impacto directo en la conversión de ventas.
* Los fallos se concentran en determinados métodos de pago, no distribuyéndose de manera uniforme.
* La clasificación de razones de fallo permitió detectar causas operativas recurrentes, como rechazos bancarios y errores de gateway.
* El análisis temporal evidenció que la problemática se mantiene de forma sostenida a lo largo del período analizado.

---

### 📉 Impacto económico


El análisis de los montos asociados a pagos fallidos permitió cuantificar una pérdida potencial de ingresos que afecta directamente la rentabilidad del negocio. Los resultados indican que las pérdidas acumuladas ascienden a $996,5 mil, atribuibles principalmente a fallos en los procesos de pago, identificados como uno de los principales problemas de la organización.


---


## 🚀 Próximos Pasos Recomendados

* Incorporar variables externas como campañas comerciales, promociones y cambios en proveedores de pago.
* Analizar el comportamiento del usuario durante el proceso de checkout.
* Evaluar modelos predictivos más avanzados fuera de Power BI para mejorar la precisión del forecast.
* Definir métricas de seguimiento que permitan evaluar el impacto de acciones correctivas en el corto plazo.
* Los resultados sugieren que, en ausencia de acciones correctivas, la tasa de pagos exitosos tendería a mantenerse en niveles similares, con un grado significativo de incertidumbre. El intervalo de confianza del 95% refuerza la necesidad de interpretar la proyección como una referencia de tendencia y no como una predicción exacta.

---
## 👩‍💻 Rol y Alcance

Responsable del análisis end-to-end:
- Preparación de datos con SQL
- Definición de KPIs y medidas DAX
- Análisis de impacto económico
- Desarrollo de dashboard en Power BI
- Proyección de escenarios a corto plazo
---

## 🏁 Conclusión Final


El análisis de 1000 registros de pago, correspondientes a un período de dos años, permitió identificar una tasa de pagos exitosos del 51%, calculada sobre intentos reales de pago (333 exitosos y 320 fallidos). Los fallos se concentraron principalmente en transferencias no completadas, rechazos bancarios, errores de gateway y abandono en pagos en efectivo. A partir de esta distribución, se definieron mejoras focalizadas según la naturaleza de cada fallo —simplificación de pagos offline, redirección a medios alternativos y reintentos ante errores técnicos— y se estimó de forma conservadora la recuperación parcial de transacciones fallidas. Bajo estos supuestos, la tasa de pagos exitosos podría incrementarse hasta un valor cercano al 64%, evidenciando que la optimización del proceso de cobro representa una oportunidad concreta de mejora en la conversión del ecommerce.
