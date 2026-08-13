# SQL Sales Analysis

Repositorio dedicado al análisis de las ventas de una tienda mediante consultas SQL. El proyecto utiliza un conjunto de archivos CSV con información de clientes, productos y ventas para obtener diferentes indicadores comerciales y responder preguntas de negocio.

## 📊 Contenido del proyecto

El repositorio contiene datos de ventas y un archivo SQL con las consultas utilizadas para realizar el análisis.

Las consultas permiten obtener los siguientes análisis:

### 1. Ventas por categoría
Analiza las ventas agrupándolas por categoría de producto para identificar cuáles presentan un mayor desempeño comercial.

### 2. Cliente que más compra
Identifica al cliente que registra el mayor volumen de compras dentro del conjunto de datos.

### 3. Cliente que más ingresos genera a la empresa
Determina qué cliente representa el mayor aporte económico a la empresa a partir del valor total de sus compras.

### 4. Ranking de clientes
Genera un ranking de clientes de acuerdo con su comportamiento de compra, permitiendo identificar a los clientes más importantes para el negocio.

### 5. Producto más rentable
Identifica el producto que genera la mayor rentabilidad para la empresa a partir de la información disponible de ventas, precios y costos.

### 6. Ranking completo
Genera un ranking general para comparar el desempeño de los diferentes elementos analizados en el conjunto de datos.

### 7. Ingresos por país y ciudad
Analiza los ingresos generados por las ventas agrupándolos por país y ciudad, permitiendo identificar los mercados geográficos con mayor aporte económico.

### 8. Top de ciudad por país
Identifica la ciudad con mayores ingresos dentro de cada país, permitiendo conocer las principales ciudades para el negocio en cada mercado.

## 📁 Estructura del repositorio

```text
SQL-Sales-Analysis/
│
├── README.md
├── queries_ventas.sql
├── clientes.csv
├── dataset_ventas_1200.csv
├── productos.csv
└── ventas_fact.csv
```

### Descripción de los archivos

| Archivo | Descripción |
|---|---|
| `queries_ventas.sql` | Contiene todas las consultas SQL utilizadas para realizar el análisis de ventas. |
| `clientes.csv` | Contiene la información correspondiente a los clientes. |
| `dataset_ventas_1200.csv` | Dataset principal con 1.200 registros de ventas utilizado para el análisis. |
| `productos.csv` | Contiene la información relacionada con los productos disponibles. |
| `ventas_fact.csv` | Contiene la información de las ventas utilizada como tabla de hechos para el análisis. |
| `README.md` | Documentación y descripción general del proyecto. |

## 🔍 Consultas SQL

Todas las consultas del proyecto se encuentran centralizadas en el archivo:

```text
queries_ventas.sql
```

Dentro de este archivo se encuentran las consultas necesarias para responder las diferentes preguntas de negocio planteadas en el análisis:

- Ventas por categoría.
- Cliente que más compra.
- Cliente que más ingresos genera a la empresa.
- Ranking de clientes.
- Producto más rentable.
- Ranking completo.
- Ingresos por país y ciudad.
- Top de ciudad por país.

## 🎯 Objetivo

El objetivo del proyecto es demostrar la aplicación práctica de **SQL para el análisis de datos comerciales**, utilizando consultas capaces de transformar información de ventas en indicadores útiles para la toma de decisiones.

El análisis permite:

- Conocer el comportamiento de las ventas.
- Identificar los clientes de mayor valor.
- Analizar el desempeño de los productos.
- Determinar productos con mayor rentabilidad.
- Construir rankings mediante consultas SQL.
- Analizar los ingresos por ubicación geográfica.
- Identificar los principales mercados y ciudades.

## 🛠️ Tecnologías

- **SQL**
- **CSV**
- Bases de datos relacionales
- Consultas de agregación y agrupación
- Funciones de ventana (*Window Functions*)
- Ordenamiento y ranking
- Análisis de datos

## 💡 Preguntas de negocio

Las consultas desarrolladas buscan responder preguntas como:

> ¿Qué categoría genera mayores ventas?

> ¿Cuál es el cliente que más compra?

> ¿Qué cliente genera mayores ingresos para la empresa?

> ¿Cuáles son los clientes más importantes según su volumen de compra?

> ¿Cuál es el producto más rentable?

> ¿Qué países y ciudades generan mayores ingresos?

> ¿Cuál es la ciudad con mayores ingresos dentro de cada país?

## 📌 Propósito del proyecto

Este proyecto forma parte de un portafolio de **Análisis de Datos y Business Intelligence**, demostrando el uso de SQL para explorar información comercial, generar métricas y obtener conclusiones orientadas a la toma de decisiones.

## 👨‍💻 Autor

**Edwin Yépez**  
Analista de Datos | Business Intelligence

Proyecto desarrollado como parte de un portafolio profesional de análisis de datos.