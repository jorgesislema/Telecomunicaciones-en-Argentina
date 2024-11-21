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
# 📊 Exploración de Datos (EDA)

El **Análisis Exploratorio de Datos (EDA)** busca explorar y comprender las tendencias y relaciones dentro de los datos del sector de telecomunicaciones en Argentina. Este análisis se enfoca en las tecnologías de comunicación más relevantes (internet, telefonía móvil, telefonía fija y televisión), evaluando su adopción, ingresos y relevancia en el mercado.

---

## 🌐 1. Contexto Global y Nacional

El internet ha transformado el mundo, revolucionando cómo las personas interactúan, trabajan y acceden a la información. Su adopción ha sido acelerada por factores como:

- **📱 Tecnología móvil**: Ha permitido un acceso más amplio y flexible.
- **🦠 Pandemia de COVID-19**: Impulsó el uso del internet para trabajo remoto, educación y entretenimiento.

En **Argentina**, este fenómeno es igualmente relevante. El internet y la telefonía móvil han mostrado un **crecimiento exponencial**, mientras que las tecnologías tradicionales, como la telefonía fija y la televisión por suscripción, enfrentan un declive relativo.

---

## 📈 2. Análisis Descriptivo

### 📊 Ingresos por Tecnología (2014-2024)

### Ingresos por Tecnología (2014-2024)

![Ingresos por Tecnología](https://github.com/jorgesislema/Telecomunicaciones-en-Argentina/blob/main/imagenes/output1.1.png?raw=true)

Se compararon los ingresos generados por cada tecnología de telecomunicaciones entre 2014 y 2024, destacando:

- **📞 Telefonía Móvil**:
  - Liderazgo en ingresos: En 2014, generaba 13,970.8 millones de pesos, mientras que en 2024 se estima que alcanzará 1,108,472.5 millones de pesos.
  - Crecimiento sostenido: Su capacidad de adaptación a la tecnología móvil consolidó su liderazgo.

- **🌐 Internet**:
  - Crecimiento exponencial: En 2014, los ingresos eran de 3,270.8 millones de pesos, aumentando a 442,032.2 millones en 2024.
  - Fluctuaciones: A pesar de caídas económicas, desde 2022 ha mostrado una recuperación acelerada.

- **📺 Telefonía Fija y TV por Suscripción**:
  - Crecimiento marginal y relevancia en declive: Estas tecnologías han sido desplazadas por la telefonía móvil y las plataformas de streaming.

---

### 🗺️ Variación Regional

#### Acceso por Provincia
- Zonas urbanas como la Patagonia lideran en conectividad, mientras que el Noreste enfrenta brechas significativas.

#### Impacto de la Pandemia
- La pandemia aumentó significativamente la dependencia del internet, acelerando el crecimiento en provincias con mejor infraestructura.

---

### 📊 Distribución de Accesos por Tecnología (2014 vs 2024)

El gráfico de comparación muestra cómo las tecnologías de acceso a internet han evolucionado:

![Distribución de Tecnologías](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/arbol%20Treemap.png?raw=true)

- **Fibra Óptica**:
  - Creció significativamente, alcanzando el **36.1% en 2024**, impulsada por la demanda de mayor velocidad y ancho de banda.

- **Cablemódem**:
  - Creció del **38.1% en 2014** al **50.8% en 2024**, manteniendo su relevancia.

- **ADSL**:
  - Declive drástico, cayendo del **57.4% en 2014** a valores mínimos en 2024, reflejando su obsolescencia.

- **Wireless**:
  - Aunque su crecimiento es modesto, sigue siendo relevante en regiones con infraestructura limitada.

---

### 🌍 Distribución de Tecnologías por Provincia

El gráfico de árbol (Treemap) ilustra la distribución de tecnologías de acceso en cada provincia:

![Distribución de Tecnologías](https://github.com/jorgesislema/An-lisis-Integral-del-Sector-de-Telecomunicaciones-en-Argentina-/blob/main/imagenes/arbol%20Treemap.png?raw=true)

- **Provincias Urbanas**:
  - En regiones como **CABA, Buenos Aires y Córdoba**, predomina la **fibra óptica** y el **cablemódem**.

- **Provincias Rurales**:
  - En zonas como **Formosa** y **Santiago del Estero**, tecnologías como **wireless** y **satelital** tienen mayor presencia.

---
📊 ##**Creación de la Base de Datos**  
1. Creación de la Base de Datos

Con los archivos procesados en el ETL , procedimos a construir la base de datos necesaria para analizar los KPIs definidos. Los pasos realizados incluyen:

    Tablas creadas :
        Dim_Tecnologías : Contiene información sobre las tecnologías de acceso a internet (fibra óptica, cablemódem, ADSL, etc.).
        Dim_Provincias : Incluye datos demográficos y geográficos de las provincias argentinas.
        Dim_Tiempo : Tabla calendario utilizada para análisis temporales.
        Fact_Accesos : Registra los accesos a internet, telefonía fija, móvil y televisión por cada 100 hogares/habitantes.
        Fact_Ingresos : Detalla los ingresos por internet, telefonía móvil, televisión por suscripción y satelital. 

    Modelo Estrella :
        Se establecieron relaciones entre las tablas dimensión y las tablas de hechos, optimizando el modelo para su integración en herramientas de análisis como Power BI . 

    Objetivo del Modelo :
        Crear una estructura eficiente que facilite la generación de gráficos y métricas para medir el cumplimiento de los KPIs propuestos. 

##** Dashboard para el Análisis Integral de la Rentabilidad de Internet en Argentina**

Tras cargar la base de datos en Power BI , se diseñaron los gráficos necesarios para analizar y visualizar los datos relacionados con la rentabilidad de internet en Argentina . Los pasos realizados incluyen:

    Gráficos creados :
        Gráfico de líneas : Muestra la evolución de los ingresos por internet, telefonía móvil y televisión entre 2014 y 2024.
        Mapa de calor : Destaca las provincias con mayor crecimiento en accesos por cada 100 hogares.
        Gráfico de barras apiladas : Compara la distribución de accesos por tecnologías en las provincias.
        Gráfico de donas : Representa la aceptación de los servicios de televisión satelital y por suscripción.
        Tablas dinámicas : Muestran el cumplimiento de los KPIs en tiempo real, con desgloses por trimestre y año. 

    Análisis realizados :
        Internet :
            Se analizó el cumplimiento del KPI de un incremento del 2% en los accesos por cada 100 hogares, observando que, aunque no se cumplió inicialmente, se proyecta una mejora sostenida.
            Los ingresos proyectados para 2024 superaron las expectativas, alcanzando 442.03 millones de pesos . 
        Telefonía móvil :
            El KPI de 30% de aumento en ingresos se cumplió, con un incremento destacado en los accesos operativos. 
        Televisión por suscripción :
            El KPI de un aumento del 3% en aceptación también fue alcanzado, con un crecimiento notable en los accesos por suscripción. 

3. Contexto de los KPIs Propuestos

    Aumentar en un 2% el acceso al servicio de Internet por cada 100 hogares en cada provincia para el próximo trimestre :
        Aunque este KPI no se cumplió inicialmente, se espera un incremento del 0.5% al 1% en los próximos períodos, gracias a inversiones en tecnologías modernas como fibra óptica y cablemódem. 

    Incrementar las ganancias del servicio de Internet en un 50% durante el año 2024 :
        Este KPI fue superado , con ingresos que pasaron de 118.06 millones de pesos en 2023 a 442.03 millones de pesos en el primer semestre de 2024 . 

    Lograr un aumento del 30% en los ingresos por telefonía móvil :
        Meta cumplida , con ingresos superiores a 5,632 millones de pesos en el primer semestre de 2024, impulsados por la adopción masiva de dispositivos móviles y accesos operativos. 

    Incrementar en un 3% la aceptación de accesos de televisión por suscripción por cada 100 habitantes para el próximo trimestre :
        El KPI fue cumplido , con un crecimiento en la aceptación del servicio de televisión por suscripción y un aumento proyectado de 679.38 accesos más . 
---

## ✅ 3. Conclusiones Generales

1. **📱 Telefonía Móvil e Internet**:
   - Son las tecnologías líderes del sector, con un crecimiento constante y una adopción masiva.

2. **📺 Telefonía Fija y Televisión por Suscripción**:
   - Están siendo desplazadas por alternativas modernas como el streaming.

3. **🌍 Brechas Regionales**:
   - Persisten desigualdades significativas entre las regiones urbanas y rurales, destacando la necesidad de políticas públicas para garantizar una conectividad equitativa.

4. **💡 Oportunidades de Inversión**:
   - Las regiones menos conectadas presentan oportunidades para desarrollar infraestructura y mejorar la inclusión digital.

---
📌 Recomendaciones Generales

    Modernización Tecnológica en Contratos Estatales
        Los nuevos contratos estatales deben incluir una visión de salto tecnológico , asegurando que las implementaciones contemplen tecnologías con una vigencia no menor a tres años .
        Esto permitirá evitar procesos intermedios, como la transición de 3G a 4G, y promover directamente la adopción de tecnologías avanzadas como el 5G, previniendo rezagos tecnológicos y garantizando que el país esté alineado con los estándares internacionales.

    Combatir la Piratería
        Es fundamental que los gobiernos se enfoquen en reducir la piratería en el sector de telecomunicaciones e internet.
        Esta medida no solo aumentará la confianza en las plataformas legales, sino que también abrirá nuevas líneas de negocio en internet, incentivando la aceptación de servicios legales entre los ciudadanos y contribuyendo al desarrollo económico del sector.

    Regulación de Precios Basada en Calidad
        Se recomienda establecer políticas claras para regular los precios de los servicios de internet y telecomunicaciones, ajustándolos en función de:
            La calidad del servicio ofrecido.
            La prestación de servicios adicionales , como velocidad, estabilidad y atención al cliente. 
        Esto asegurará que los usuarios reciban un servicio justo y competitivo, mejorando la percepción del mercado. 

    Inversión en Internet como Servicio Básico
        La tecnología evoluciona constantemente , y el internet se está convirtiendo cada vez más en un servicio básico esencial , como la electricidad o el agua.
        Es crucial que tanto los gobiernos como las empresas privadas inviertan en infraestructura y expansión para garantizar el acceso universal y satisfacer la creciente demanda.
        Este enfoque asegurará que el internet y las telecomunicaciones sigan siendo un negocio rentable y sostenible, al tiempo que promuevan el desarrollo social y económico. 

---
Este análisis establece una base para identificar oportunidades de inversión y mejora en el sector de telecomunicaciones en Argentina.
