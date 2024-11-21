USE Tecnologias_comunicaciones;


-- 1.- TABLA CALENDARIO
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Calendario`;

-- Creamos la tabla Calendario
CREATE TABLE `Calendario` (
    `Fecha` DATE NOT NULL,
    `Anio` INT NOT NULL,
    `Mes` INT NOT NULL,
    `Dia` INT NOT NULL,
    `Trimestre` INT NOT NULL,
    `Semana` INT NOT NULL,
    `Dia_Semana` VARCHAR(10) NOT NULL,
    `Es_Fin_De_Semana` BOOLEAN NOT NULL,
    PRIMARY KEY (`Fecha`)
);

-- 2.- TABLA Acceso sin Rango Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Acceso sin Rango Internet`;
-- Creamos la tabla Acc_Vel_Loc_Sin_Ran_Internet
CREATE TABLE `Acceso sin Rango Internet` (
  `Id_Provincia` INTEGER,
  `Provincia` VARCHAR(45),
  `Id_Localidad` INTEGER,
  `Localidad` VARCHAR(45),
  `Velocidad_Mbps` DECIMAL(10,2),
  `Accesos` INTEGER
);
-- Verificamos la tabla creada
SELECT * FROM `Acceso sin Rango Internet`;

-- 3.- TABLA Acc_por_Ran_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Accesos por rangos Internet`;
-- Creamos la tabla Acc_por_Ran_Internet
CREATE TABLE `Accesos por rangos Internet` (
    `Id_Provincia` INT,
    `Provincia` VARCHAR(100),
    `Fecha` DATE,
    `HASTA_512_kbps` DECIMAL(10,2),
    `Mas_512Kbps_1Mbps` DECIMAL(10,2),
    `Mas_1Mbps_6Mbps` DECIMAL(10,2),
    `Mas_6Mbps_10Mbps` DECIMAL(10,2),
    `Mas_10Mbps_20Mbps` DECIMAL(10,2),
    `Mas_20Mbps_30Mbps` DECIMAL(10,2),
    `Mas_30Mbps` DECIMAL(10,2),
    `Otros` DECIMAL(10,2),
    `Total` DECIMAL(10,2)
);
SELECT * FROM `Accesos por rangos Internet`;


-- 4.-TABLA Accesos_por_tecnologia_Internet 
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Accesos_por_tecnologia_Internet`;
CREATE TABLE Accesos_por_tecnologia_Internet (
    Id_Provincia INT,
    Provincia VARCHAR(100),
    Fecha DATE,
    ADSL DECIMAL(10,2),
    Cablemodem DECIMAL(10,2),
    Fibra_Optica DECIMAL(10,2),
    Wireless DECIMAL(10,2),
    Otros DECIMAL(10,2),
    Total DECIMAL(10,2)
);
-- Verificamos la tabla creada
SELECT * FROM `Accesos_por_tecnologia_Internet`;


-- 5.- TABLA Acce_Tec_Loc_Internet
DROP TABLE IF EXISTS `Accesos_tecnologia_localidad_Internet`;
CREATE TABLE `Accesos_tecnologia_localidad_Internet` (
    `Id_Provincia` INT,
    `Provincia` VARCHAR(100),
    `Id_Partido` INT,
    `Partido` VARCHAR(100),
    `Id_Localidad` INT,
    `Localidad` VARCHAR(100),
    `Tecnologia` VARCHAR(50),
    `Link_Indec` BIGINT,
    `Accesos` DECIMAL(10,2)
);
SELECT * FROM `Accesos_tecnologia_localidad_Internet`;


-- 6.-TABLA  Dial_BAf_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Dial_BAf_Internet`;
-- Crear la tabla `Dial_BAf_Internet`
CREATE TABLE Dial_BAf_Internet (
    Id_Provincia INT,
    Provincia VARCHAR(100),
    Fecha DATE,
    Banda_Ancha_Fija INT,
    Dial_Up DECIMAL(10,2),
    Total INT
);

-- Verificamos la tabla creada
SELECT * FROM `Dial_BAf_Internet`;

-- 7.- TABLA Ingresos_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Ingresos_Internet`;
-- Crear la tabla `Ingresos_Internet`
CREATE TABLE Ingresos_Internet (
    Fecha DATE NOT NULL,
    Ingresos_Miles_Pesos DECIMAL(25,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Ingresos_Internet`;


-- 8.- TABLA Penetracion_Hogares_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Penetracion_Hogares_Internet`;
-- Crear la tabla `Penetracion_Hogares_Internet`
CREATE TABLE Penetracion_Hogares_Internet (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hogares DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Penetracion_Hogares_Internet`;

-- 9.- TABLA Penetración_poblacion_internet
DROP TABLE IF EXISTS `Penetración_poblacion_internet`;
-- Crear la tabla `Penetración_poblacion_internet`
CREATE TABLE Penetración_poblacion_internet (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hab DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Penetración_poblacion_internet`;


-- 10.-TABLA Penetración_total_Intenet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Penetración_total_Intenet`;
-- Crear la tabla `Pen_tot_Intenet`
CREATE TABLE Penetración_total_Intenet (
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hogares DECIMAL(10,4) NOT NULL,
    Accesos_por_cada_100_hab DECIMAL(10,4) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Penetración_total_Intenet`;


-- 11.-TABLA  Tot_Acc_por_Rango_Int
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Total_Aceso_por_Rango_Internet`;
-- Creamos la tabla `Tot_Acc_por_Rango_Int`
CREATE TABLE Total_Aceso_por_Rango_Internet (
    Fecha DATE NOT NULL,
    Hasta_512_kbps INT NOT NULL,
    Entre_512_Kbps_y_1_Mbps INT NOT NULL,
    Entre_1_Mbps_y_6_Mbps INT NOT NULL,
    Entre_6_Mbps_y_10_Mbps INT NOT NULL,
    Entre_10_Mbps_y_20_Mbps INT NOT NULL,
    Entre_20_Mbps_y_30_Mbps INT NOT NULL,
    Mas_de_30_Mbps INT NOT NULL,
    OTROS INT NOT NULL,
    Total INT NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Total_Aceso_por_Rango_Internet`;

-- 12.-TABLA Total_Accesos_Por_Tecnologia_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Total_Accesos_Por_Tecnologia_Internet`;
-- Creamos la tabla Total_Accesos_Por_Tecnologia_Internet
CREATE TABLE Total_Accesos_Por_Tecnologia_Internet (
    Fecha DATE NOT NULL,
    ADSL INT NOT NULL,
    Cablemodem INT NOT NULL,
    Fibra_Optica INT NOT NULL,
    Wireless INT NOT NULL,
    Otros INT NOT NULL,
    Total INT NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Total_Accesos_Por_Tecnologia_Internet`;


-- 14.- TABLA Totales_VMD_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Totales_VMD_internet`;
-- Creamos la tabla Totales_VMD_internet
CREATE TABLE Totales_VMD_internet (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Mbps_Media_Bajada DECIMAL(10,2) NOT NULL,
    Periodo VARCHAR(50) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Totales_VMD_internet`;


-- 15.- TABLA Velocidad_por_Provincia_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Velocidad_por_Provincia_internet`;
-- Creamos la tabla Velocidad_por_Provincia_internet
CREATE TABLE Velocidad_por_Provincia_internet (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    Mbps_Media_Bajada DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Velocidad_por_Provincia_internet`;


-- 16.- TABLA Velosidad_sin_Rango_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Velosidad_sin_Rango_internet`;
-- Creamos la tabla Vel_sin_Ran_internet
CREATE TABLE Velosidad_sin_Rango_internet (
    Fecha DATE,
    Provincia VARCHAR(100),
    Velocidad DECIMAL(10,2),
    Accesos INT,
    Id_Provincia INT
);
-- Verificamos la tabla creada
SELECT * FROM `Velosidad_sin_Rango_internet`;

-- 17.- TABLA mapa_de_conectividad_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `mapa_de_conectividad_internet`;
-- Creamos la tabla mapa_de_conectividad_internet
CREATE TABLE mapa_de_conectividad_internet (
    Id_Provincia INT,
    Provincia VARCHAR(50),
    Id_Partido INT,
    Partido VARCHAR(100),
    Id_Localidad INT,
    Localidad VARCHAR(100),
    ADSL VARCHAR(10),
    Cablemodem VARCHAR(10),
    Dial_Up VARCHAR(10),
    Fibra_Optica VARCHAR(10),
    Satelital VARCHAR(10),
    Wireless VARCHAR(10),
    Telefonia_Fija VARCHAR(10),
    TresG VARCHAR(10),
    CuatroG VARCHAR(10),
    Link DECIMAL(15, 2),
    Latitud DECIMAL(15, 10),
    Longitud DECIMAL(15, 10)
);
-- Verificamos la tabla creada
SELECT * FROM `mapa_conec_internet`;


-- 18.- TABLA Telefonia_Fija_Acceso_total
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Acceso_total`;
-- Creamos la tabla Telefonia_Fija_Acceso_total
CREATE TABLE Telefonia_Fija_Acceso_total (
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_Total INT,
    Accesos_Telefonia_Fija_Hogares INT,
    Accesos_Telefonia_Fija_Comercial INT,
    Accesos_Telefonia_Fija_Gobierno INT,
    Accesos_Telefonia_Fija_Otros INT
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fija_Acceso_total`;


-- 18.- TABLA Telefonia_Fija_Ingresos
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Ingresos`;
-- Creamos la tabla Telefonia_Fi_Ingresos

CREATE TABLE Telefonia_Fija_Ingresos (
    Fecha DATE NOT NULL,
    Ingresos_Miles_Pesos DECIMAL(15,3) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fija_Ingresos`;

-- 19.- TABLA Telefonia_Fija_Penetracion_Provincias
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Penetracion_Provincias`;
-- Creamos la tabla Telefonia_Fija_Penetracion_Provincias

CREATE TABLE Telefonia_Fija_Penetracion_Provincias (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hab DECIMAL(10,6) NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hogares DECIMAL(10,6) NOT NULL
);
-- Verificamos la taTelefonia_Fija_Pen_Provbla creada
SELECT * FROM `Telefonia_Fija_Penetracion_Provincias`;

-- 20.- TABLA Telefonia_Fija_Pen_Total
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Penetracion_Total`;
-- Creamos la tabla Telefonia_Fija_Penetracion_Total
CREATE TABLE Telefonia_Fija_Penetracion_Total (
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hab DECIMAL(10,6) NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hogares DECIMAL(10,6) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fija_Penetracion_Total`;


-- 21.- TABLA Telefonia_Fija_Provincia_Tipo
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Provincia_Tipo`;
-- Creamos la tabla Telefonia_Fija_Provincia_Tipo
CREATE TABLE Telefonia_Fija_Provincia_Tipo (
    Fecha DATE NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    Accesos_telefonia_fija_total INT NOT NULL,
    Accesos_telefonia_fija_hogares INT NOT NULL,
    Accesos_telefonia_fija_comercial INT NOT NULL,
    Accesos_telefonia_fija_gobierno INT NOT NULL,
    Accesos_telefonia_fija_otros INT NOT NULL,
    Id_Provincia INT NOT NULL,
    PRIMARY KEY (Fecha, Id_Provincia)
);

-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fija_Provincia_Tipo`;

-- 22.- TABLA Telefonia_Movil_Accesos 
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Movil_Accesos `;
-- Creamos la tabla Telefonia_Movil_Accesos 
CREATE TABLE Telefonia_Movil_Accesos  (
    Fecha DATE NOT NULL,
    Total_accesos_pospago FLOAT NOT NULL,
    Total_accesos_prepago FLOAT NOT NULL,
    Total_accesos_operativos INT NOT NULL,
    Periodo VARCHAR(50) NOT NULL,
    PRIMARY KEY (Fecha)
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Movil_Accesos `;


-- 23.- Tabla Telefonia_movil_Ingresos
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS Telefonia_movil_Ingresos;
-- Creamos la tabla Ingresos_Tel_Mov
CREATE TABLE Telefonia_movil_Ingresos (
    Fecha DATE NOT NULL,
    Ingresos_Miles_Dol BIGINT NOT NULL,
    PRIMARY KEY (Fecha)
);
-- Verificamos la tabla creada
SELECT * FROM Telefonia_movil_Ingresos;

-- 24.-TABLA Telefonia_Movil_Llamadas_salientes
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Movil_Llamadas_salientes`;

-- Creamos la tabla Llamadas_salientes_Tel_Movil
CREATE TABLE `Telefonia_Movil_Llamadas_salientes` (
    Fecha DATE NOT NULL,
    Llamadas_pospago_salientes_miles FLOAT NOT NULL,
    Llamadas_prepago_salientes_miles FLOAT NOT NULL,
    Total_llamadas_salientes_miles FLOAT NOT NULL,
    PRIMARY KEY (Fecha)
);
-- Verificamos que la tabla se haya creado correctamente
SELECT * FROM `Telefonia_Movil_Llamadas_salientes`;

-- 26.-TABLA Telefonia_Movil_Penetracion
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Movil_Penetracion`;
-- Creamos la tabla Telefonia_Movil_Penetracion
CREATE TABLE Telefonia_Movil_Penetracion (
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hab FLOAT NOT NULL,
    PRIMARY KEY (Fecha)
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Movil_Penetracion`;


-- 27.-TABLA Accesos_provincias_TV
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Accesos_provincias_TV`;
-- Creamos la tabla Accesos_prov_TV
CREATE TABLE Accesos_provincias_TV (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_TV_por_suscripcion BIGINT NOT NULL,
    PRIMARY KEY (Id_Provincia, Fecha)
);
SELECT * FROM `Accesos_provincias_TV`;

-- 28.-TABLA Accesos_totales_TV
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS Accesos_totales_TV;
-- Creamos la tabla Accesos_totales_TV
CREATE TABLE Accesos_totales_TV (
    Fecha DATE NOT NULL,
    Accesos_TV_por_suscripcion BIGINT NOT NULL,
    Accesos_TV_satelital BIGINT NOT NULL,
    PRIMARY KEY (Fecha)
);
SELECT * FROM Accesos_totales_TV LIMIT 10;

-- 29.-TABLA Ingresos_TV
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS Ingresos_TV;
-- Creamos la tabla Ingresos_TV
CREATE TABLE Ingresos_TV (
    Fecha DATE NOT NULL,
    Ingresos_TV_por_suscripcion DECIMAL(20,2) NOT NULL,
    Ingresos_TV_satelital DECIMAL(20,2) NOT NULL,
    PRIMARY KEY (Fecha)
);
SELECT * FROM Ingresos_TV LIMIT 10;

-- 30.-Tabla Penetracion_totales_TV
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS Penetracion_totales_TV;
-- Creamos la tabla Penetracion_totales_TV
CREATE TABLE Penetracion_totales_TV (
    Fecha DATE NOT NULL,
    Accesos_TV_por_suscripcion_por_100_hab FLOAT NOT NULL,
    Accesos_TV_satelital_por_100_hab FLOAT NOT NULL,
    Accesos_TV_por_suscripcion_por_100_hogares FLOAT NOT NULL,
    Accesos_TV_satelital_por_100_hogares FLOAT NOT NULL,
    PRIMARY KEY (Fecha)
);

SELECT * FROM Penetracion_totales_TV LIMIT 10;


DROP TABLE IF EXISTS `hechos_internet`;
CREATE TABLE `hechos_internet` (
    `Id_Hecho` INT AUTO_INCREMENT PRIMARY KEY,
    `Fecha` DATE NOT NULL,
    `Id_Provincia` INT NOT NULL,
    `Id_Tecnologia` INT NOT NULL,
    `Id_Producto` INT NOT NULL,
    `Accesos` INT DEFAULT NULL,
    `Velocidad_Mbps` DECIMAL(10, 2) DEFAULT NULL,
    `Ingresos_Miles_Pesos` DECIMAL(15, 2) DEFAULT NULL,
    FOREIGN KEY (`Fecha`) REFERENCES `dim_calendario`(`Fecha`),
    FOREIGN KEY (`Id_Provincia`) REFERENCES `dim_provincia`(`Id_Provincia`),
    FOREIGN KEY (`Id_Tecnologia`) REFERENCES `dim_tecnologia`(`Id_Tecnologia`),
    FOREIGN KEY (`Id_Producto`) REFERENCES `dim_producto`(`Id_Producto`)
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `dim_calendario`;
SET FOREIGN_KEY_CHECKS = 1;

-- 2.  Relaciones para Tablas de Dimensiones
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `dim_calendario`;
-- Crear la tabla nuevamente
CREATE TABLE `dim_calendario` (
    `Fecha` DATE PRIMARY KEY,
    `Año` INT NOT NULL,
    `Mes` INT NOT NULL,
    `Nombre_Mes` VARCHAR(20),
    `Dia` INT NOT NULL,
    `Dia_Semana` VARCHAR(20),
    `Trimestre` INT NOT NULL,
    `Semana` INT NOT NULL,
    `Es_Fin_De_Semana` BOOLEAN
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `dim_provincia`;
SET FOREIGN_KEY_CHECKS = 1;

-- Dimensión Provincia
DROP TABLE IF EXISTS `dim_provincia`;
CREATE TABLE `dim_provincia` (
    `Id_Provincia` INT PRIMARY KEY,
    `Provincia` VARCHAR(100)
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `dim_tecnologia`;
SET FOREIGN_KEY_CHECKS = 1;
-- Dimensión Tecnología
DROP TABLE IF EXISTS `dim_tecnologia`;
CREATE TABLE `dim_tecnologia` (
    `Id_Tecnologia` INT PRIMARY KEY,
    `Nombre_Tecnologia` VARCHAR(100)
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `dim_producto`;
SET FOREIGN_KEY_CHECKS = 1;
-- Dimensión Producto
DROP TABLE IF EXISTS `dim_producto`;
CREATE TABLE `dim_producto` (
    `Id_Producto` INT PRIMARY KEY,
    `Nombre_Producto` VARCHAR(100),
    `Categoria` VARCHAR(100)
);

-- 3. Transferir Datos desde Tablas Dispersas
-- Ingresos por Fecha y Provincia
INSERT INTO `hechos_internet` (`Fecha`, `Id_Provincia`, `Ingresos_Miles_Pesos`)
SELECT `Fecha`, `Id_Provincia`, `Ingresos_Miles_Pesos`
FROM `ingresos_internet`;
DESCRIBE hechos_internet;
SELECT Id_Provincia FROM hechos_internet;
INSERT INTO hechos_internet (`Fecha`, `Id_Provincia`, `Id_Tecnologia`, `Id_Producto`, `Accesos`, `Velocidad_Mbps`, `Ingresos_Miles_Pesos`)
VALUES ('2024-01-01', 1, 1, 1, 500, 50.5, 10000.00);

-- Velocidad y Accesos por Rango
INSERT INTO `hechos_internet` (`Fecha`, `Id_Provincia`, `Velocidad_Mbps`, `Accesos`)
SELECT `Fecha`, `Id_Provincia`, AVG(`Velocidad`) AS `Velocidad_Mbps`, SUM(`Accesos`) AS `Accesos`
FROM `velocidad_sin_rango_internet`
GROUP BY `Fecha`, `Id_Provincia`;
SELECT Id_Provincia FROM hechos_internet;

-- Accesos por Tecnología
INSERT INTO `hechos_internet` (`Fecha`, `Id_Provincia`, `Id_Tecnologia`, `Accesos`)
SELECT `Fecha`, `Id_Provincia`, `Id_Tecnologia`, `Accesos`
FROM `total_accesos_por_tecnologia_internet`;

-- Penetración por Hogares y Población
INSERT INTO `hechos_internet` (`Fecha`, `Id_Provincia`, `Accesos`)
SELECT `Fecha`, `Id_Provincia`, SUM(`Accesos_por_cada_100_hogares` + `Accesos_por_cada_100_hab`) AS `Accesos`
FROM `penetracion_hogares_internet`
GROUP BY `Fecha`, `Id_Provincia`;

-- Validar Relaciones
SELECT * FROM `hechos_internet` hi
JOIN `dim_calendario` dc ON hi.`Fecha` = dc.`Fecha`
JOIN `dim_provincia` dp ON hi.`Id_Provincia` = dp.`Id_Provincia`
JOIN `dim_tecnologia` dt ON hi.`Id_Tecnologia` = dt.`Id_Tecnologia`;

SELECT TABLE_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME = 'dim_calendario';

ALTER TABLE `hechos_internet` DROP FOREIGN KEY `hechos_internet_ibfk_1`;
