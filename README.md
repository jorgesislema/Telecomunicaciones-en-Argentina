# An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-
"Análisis Integral del Sector de Telecomunicaciones en Argentina: Exploración de Datos, Métricas Clave y Dashboard Interactivo" 
---
![Logotipo](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/logotipo%201.png?raw=true)

##📌 Introducción

En Argentina, el acceso a internet y la adopción de tecnologías de telecomunicaciones han avanzado significativamente en los últimos años, convirtiéndose en un factor clave para el desarrollo social, económico y cultural del país. Según datos del último trimestre de 2023, el 89,2% de la población argentina tiene acceso a internet, con una cobertura aún mayor en los hogares urbanos, alcanzando el 93,4% a través de redes fijas o móviles.

A nivel regional, la Patagonia lidera en acceso a internet con un 92,9%, mientras que el Noreste se encuentra 2,6 puntos porcentuales por debajo de la media nacional. En términos de tecnología de conexión en los hogares, la fibra óptica domina el mercado con un 55% de adopción, seguida de cablemódem (22%), conexiones inalámbricas (12%), ADSL (8%) y redes satelitales (3%).

Además, el uso de dispositivos móviles e internet es notablemente alto: 90 de cada 100 personas poseen un teléfono celular y 89 de cada 100 utilizan internet de manera regular. Estos datos destacan el papel crítico de las telecomunicaciones en la vida diaria de los argentinos, así como su impacto en la educación, el trabajo, el entretenimiento y la interacción social.
---
##Contexto y Relevancia

La industria de las telecomunicaciones es un pilar esencial en la sociedad moderna, permitiendo la transmisión de información a través de medios electrónicos como la telefonía, la televisión, la radio e internet. Estos medios no solo facilitan la comunicación entre individuos, organizaciones y dispositivos a nivel global, sino que también son fundamentales para el desarrollo económico y social, especialmente en un mundo cada vez más interconectado.

El internet, como red global de computadoras, ha revolucionado la forma en que nos comunicamos, trabajamos y aprendemos. Durante momentos críticos, como la pandemia global, las telecomunicaciones demostraron ser un recurso vital para mantener la conectividad entre personas y empresas, garantizando la continuidad de actividades esenciales y reforzando su rol como un servicio indispensable.

En este contexto, las empresas del sector enfrentan el desafío de expandir la cobertura y mejorar la calidad de sus servicios para satisfacer las crecientes demandas de los usuarios. Esto incluye identificar regiones con menor conectividad, diversificar tecnologías de acceso y optimizar la infraestructura existente para garantizar un acceso más equitativo en todo el país.
### Objetivos Específicos:
Este proyecto tiene como propósito realizar un análisis integral del sector de telecomunicaciones en Argentina, con un enfoque especial en el acceso a internet, telefonía fija/móvil y televisión. A través del análisis de datos, se busca:
- Evaluar el comportamiento del acceso a telecomunicaciones a nivel nacional y regional.
- Identificar las brechas de conectividad y oportunidades de crecimiento.
- Proponer indicadores clave de desempeño (KPIs) que permitan medir el progreso en el acceso y calidad de los servicios.
- Diseñar un dashboard interactivo que facilite la visualización y comprensión de los resultados.
- Proveer insights estratégicos que orienten a las empresas en la mejora de sus servicios y estrategias de mercado.

---
📂 Estructura del Proyecto

# Proyecto Individual: Análisis del Sector de Telecomunicaciones en Argentina

## Estructura del Proyecto

```plaintext
📂 Proyecto_Individual_Telecomunicaciones
│
├── 📂 datos
│   ├── 📂 dataset.csv
│   │   ├── 📂 Internet
│   │   │   ├── Acc_vel_loc_sinrangos.csv
│   │   │   ├── Accesos_por_rangos.csv
│   │   │   ├── Accesos_Por_Tecnología.csv
│   │   │   ├── Accesos_tecnologia_localidad.csv
│   │   │   ├── ...
│   │   │
│   │   ├── 📂 mapa_conectividad
│   │   │   ├── mapa_conectividad.csv
│   │   │   ├── Hoja3.csv
│   │   │
│   │   ├── 📂 telefonia_fija
│   │   │   ├── Fija_accesos_tot.csv
│   │   │   ├── Fija_ingresos.csv
│   │   │   ├── ...
│   │   │
│   │   ├── 📂 Telefonia_movil
│   │   │   ├── Accesos.csv
│   │   │   ├── Ingresos.csv
│   │   │   ├── ...
│   │   │
│   │   ├── 📂 Television
│   │       ├── Accesos_prov_TV.csv
│   │       ├── Ingresos_TV.csv
│   │       ├── ...
│   │
│   ├── dataset.xlsx
│   │   ├── Internet.xlsx
│   │   ├── mapa_conectividad.xlsx
│   │   ├── ...
│
├── 📂 scripts
│   ├── ETL_internet.ipynb
│   ├── ETL_mapa_conectividad.ipynb
│   ├── ETL_telefonia_fija.ipynb
│   ├── ETL_Telefonia_movil.ipynb
│   ├── ETL_Television.ipynb
│   ├── EDA.ipynb
│   ├── scripts_sql.ipynb
│
├── 📂 imagenes
│   ├── Accesos_a_TV_por_suscripción_y_satelital.png
│   ├── Evolución_de_Accesos_por_cada_100_hogares.png
│   ├── arbol_Treemap.png
│   ├── logotipo1.png
│   ├── ...
│
├── 📂 docs
│   ├── ETL_documentation.pdf
│   ├── EDA_documentation.pdf
│   ├── KPI_analysis.pdf
│   ├── Dashboard_summary.pdf
│
├── 📂 dashboard
│   ├── telecom_dashboard.pbix
│   ├── capturas/
│       ├── accesos_internet_mapa.png
│       ├── kpi_provincia.png
│
├── .gitignore
├── README.md
├── requirements.txt
└── 📄 Tecnologias_comunicaciones.sql
Descripción de las Carpetas y Archivos
📂 datos/

    Contiene los datos utilizados para el análisis.
    Organizados en subcarpetas basadas en los tipos de telecomunicaciones: internet, telefonía fija/móvil, TV y conectividad.
    Los archivos están en formatos .csv y .xlsx para diferentes categorías.

📂 scripts/

    Incluye los cuadernos Jupyter y scripts necesarios para realizar el ETL, el EDA y consultas SQL:
        ETL: Limpieza, transformación y carga de datos.
        EDA: Exploración inicial de los datos.
        SQL: Creación de tablas y consultas.

📂 imagenes/

    Almacena gráficos y diagramas relevantes para la documentación y el dashboard.

📂 docs/

    Documentación detallada de cada paso del proyecto:
        ETL, EDA y análisis de KPI.
        Resumen del Dashboard.

📂 dashboard/

    Contiene el archivo del dashboard creado en Power BI (telecom_dashboard.pbix).
    Capturas de los visuales importantes.

Archivos principales:

    README.md: Contiene la descripción general del proyecto, propósito, instrucciones para reproducirlo y enlaces clave.
    requirements.txt: Archivo con las dependencias necesarias para reproducir el proyecto.
    Tecnologias_comunicaciones.sql: Script SQL consolidado para la creación y consulta de la base de datos.
---
##📝 Descripción General del Proyecto

El presente proyecto tiene como objetivo principal analizar los datos del sector de telecomunicaciones en Argentina, abordando el acceso a internet, telefonía fija/móvil y televisión. Este análisis permitirá identificar patrones, tendencias y oportunidades para optimizar la calidad de los servicios ofrecidos por las empresas del sector, con un enfoque especial en la conectividad a nivel regional.

El proceso completo incluye las etapas de ETL (Extracción, Transformación y Carga), EDA (Análisis Exploratorio de Datos), diseño de indicadores clave de desempeño (KPIs) y la creación de un dashboard interactivo para una mejor interpretación de los resultados.
-- Proceso ETL

El proceso ETL comenzó con la descarga de los datasets desde la página oficial de ENACOM (https://www.enacom.gob.ar), donde los datos se encontraban en formato XLSX. Este formato fue transformado a CSV para facilitar el manejo de los archivos con Python.

Durante esta etapa, se realizaron los siguientes pasos:

    --Conversión de Formatos:
        Las hojas presentes en los archivos XLSX fueron separadas y guardadas como archivos CSV individuales, agrupando los datos            por tema (internet, telefonía fija/móvil y televisión).

    --Limpieza de Datos:
        Las columnas fueron analizadas para detectar valores faltantes, formatos inconsistentes y datos irrelevantes.
        Las fechas se transformaron a un formato estandarizado (YYYY-MM-DD) compatible con Python.
        Columnas innecesarias para el análisis fueron eliminadas para optimizar los datasets.

    --Validación y Filtrado:
        Se eliminaron duplicados y registros con información incompleta que no aportaban valor al análisis.
        Archivos considerados poco relevantes para los objetivos del proyecto fueron descartados.

    Resultados del ETL:
        Se obtuvo un conjunto de archivos CSV limpios, organizados y listos para ser analizados en las siguientes etapas.
---
# Exploración de Datos (EDA)

El Análisis Exploratorio de Datos (EDA) permite comprender de manera más profunda las tendencias y relaciones en los datos relacionados con el sector de telecomunicaciones en Argentina. Este análisis se enfoca en cómo las diferentes tecnologías de comunicación, como el internet, la telefonía móvil, la telefonía fija y la televisión, han evolucionado en términos de ingresos, adopción y relevancia en el mercado.

---

## Contexto Global y Nacional

Desde su creación, el internet ha revolucionado las interacciones humanas, el acceso a la información y la forma de trabajar. En el contexto mundial, factores como el auge de la tecnología móvil y la pandemia de COVID-19 han impulsado la adopción de internet, marcando hitos históricos en su expansión. 

En Argentina, esta evolución no ha sido diferente: el internet y la telefonía móvil han experimentado un crecimiento acelerado, mientras que los medios tradicionales, como la telefonía fija y la televisión por suscripción, han mostrado un estancamiento o retroceso relativo.

![Contexto Global](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/output1.1.png?raw=true)

---

## Análisis Descriptivo

### Ingresos por Tecnología (2014-2024)

Este análisis compara los ingresos generados por cada tecnología de telecomunicaciones entre 2014 y 2024, destacando las principales tendencias y cambios en el mercado:

- **Telefonía Móvil**:
  - Liderazgo en ingresos: En 2014, generaba 13,970.8 millones de pesos, mientras que en 2024 se estima que alcanzará 1,108,472.5 millones de pesos.
  - Crecimiento sostenido: Su capacidad de adaptación a la tecnología móvil consolidó su liderazgo.

- **Internet**:
  - Crecimiento exponencial: En 2014, los ingresos eran de 3,270.8 millones de pesos, aumentando a 442,032.2 millones de pesos en 2024.
  - Fluctuaciones: A pesar de caídas económicas, desde 2022 ha mostrado una recuperación acelerada.

- **Telefonía Fija y TV por Suscripción**:
  - Crecimiento marginal y relevancia en declive: Estas tecnologías han sido desplazadas por la telefonía móvil y las plataformas de streaming.

---

### Variación Regional

1. **Acceso por Provincia**:
   - Zonas urbanas como la Patagonia lideran en conectividad, mientras que el Noreste enfrenta brechas significativas.

2. **Impacto de la Pandemia**:
   - Durante la pandemia, la dependencia del internet aumentó significativamente, impulsando un mayor crecimiento en regiones con mejor infraestructura.

![Ingresos por Tecnología](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/Evoluci%C3%B3n%20de%20Accesos%20por%20cada%20100%20Hogares%20en%20Provincias.png?raw=true)

---

### Análisis de Distribución de Accesos por Tecnología (2014 vs 2024)

El gráfico de donas compara la distribución de accesos a internet entre 2014 y 2024 según las principales tecnologías:

- **Fibra Óptica**:
  - Creció significativamente, alcanzando el 36.1% en 2024 debido a la creciente demanda de mayor ancho de banda.

- **Cablemódem**:
  - Representa el 50.8% en 2024, creciendo desde el 38.1% en 2014.

- **ADSL**:
  - Cayó del 57.4% en 2014 a valores marginales en 2024, reflejando su obsolescencia.

- **Wireless**:
  - A pesar de un leve crecimiento, sus limitaciones restringen su adopción masiva.

---

## Distribución de Tecnologías por Provincia

El gráfico de árbol (Treemap) muestra cómo se distribuyen las tecnologías de acceso a internet en cada provincia argentina:

- **Variación entre Provincias**:
  - Buenos Aires, Córdoba y Santa Fe tienen una distribución equilibrada entre fibra óptica, cablemódem y wireless.
  - Provincias como Formosa y Santiago del Estero dependen más de tecnologías como wireless y satelital.

- **Predominio de Fibra Óptica**:
  - En provincias más urbanizadas, como CABA, la fibra óptica y el cablemódem son predominantes.

![Distribución de Tecnologías](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/arbol%20Treemap.png?raw=true)

---

## Conclusiones Generales

1. **Telefonía Móvil e Internet**:
   - Son los pilares del sector, con un crecimiento constante.

2. **Telefonía Fija y TV por Suscripción**:
   - Están siendo reemplazadas por alternativas modernas como el streaming.

3. **Brechas Regionales**:
   - Persisten desigualdades significativas entre regiones urbanas y rurales.

Este análisis establece una base para identificar oportunidades de inversión y mejora en el sector de telecomunicaciones en Argentina.
