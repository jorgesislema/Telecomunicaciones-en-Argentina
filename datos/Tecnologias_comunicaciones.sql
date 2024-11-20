DROP DATABASE IF EXISTS Tecnologias_comunicaciones;
-- Eliminar la base de datos si ya existe
IF DB_ID('Tecnologias_comunicaciones') IS NOT NULL
BEGIN
    DROP DATABASE Tecnologias_comunicaciones;
END;

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

-- 2.- TABLA Acc_Vel_Loc_Sin_Ran_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Acc_Vel_Loc_Sin_Ran_Internet`;
-- Creamos la tabla Acc_Vel_Loc_Sin_Ran_Internet
CREATE TABLE `Acc_Vel_Loc_Sin_Ran_Internet` (
  `Id_Provincia` INTEGER,
  `Provincia` VARCHAR(45),
  `Id_Localidad` INTEGER,
  `Localidad` VARCHAR(45),
  `Velocidad_Mbps` DECIMAL(10,2),
  `Accesos` INTEGER
);
-- Verificamos la tabla creada
SELECT * FROM `Acc_Vel_Loc_Sin_Ran_Internet`;


-- 3.- TABLA Acc_por_Ran_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Accesos por rangos`;
-- Creamos la tabla Acc_por_Ran_Internet
CREATE TABLE `Acc_por_Ran_Internet` (
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
SELECT * FROM `Acc_por_Ran_Internet`;


-- 4.-TABLA Acc_Por_Tec_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Acc_Por_Tec_Internet`;
CREATE TABLE Acc_Por_Tec_Internet (
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
SELECT * FROM `Aacc_por_ran_internetcc_Por_Tec_Internet`;


-- 5.- TABLA Acce_Tec_Loc_Internet
DROP TABLE IF EXISTS `Acce_Tec_Loc_Internet`;
CREATE TABLE `Acce_Tec_Loc_Internet` (
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
SELECT * FROM `Acce_Tec_Loc_Internet`;


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


-- 8.- TABLA Pen_Hog_Internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Pen_Hog_Internet`;
-- Crear la tabla `Pen_Hog_Internet`
CREATE TABLE Pen_Hog_Internet (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hogares DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Pen_Hog_Internet`;

-- 9.- TABLA Penetración_poblacion
DROP TABLE IF EXISTS `Pen_pobl_Internet `;
-- Crear la tabla `Pen_pobl_Internet`
CREATE TABLE Pen_pobl_Internet (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hab DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Pen_pobl_Internet `;


-- 10.-TABLA Pen_tot_Intenet`
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Pen_tot_Intenet`;
-- Crear la tabla `Pen_tot_Intenet`
CREATE TABLE Pen_tot_Intenet (
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hogares DECIMAL(10,4) NOT NULL,
    Accesos_por_cada_100_hab DECIMAL(10,4) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Pen_tot_Intenet`;


-- 11.-TABLA  Tot_Acc_por_Rango_Int
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Tot_Acc_por_Rango_Int`;
-- Creamos la tabla `Tot_Acc_por_Rango_Int`
CREATE TABLE Tot_Acc_por_Rango_Int (
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


-- 12.-TABLA Tot_Acce_Por_Tec_Int
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Tot_Acce_Por_Tec_Int`;
-- Creamos la tabla Tot_Acce_Por_Tec_Int

CREATE TABLE Tot_Acce_Por_Tec_Int (
    Fecha DATE NOT NULL,
    ADSL INT NOT NULL,
    Cablemodem INT NOT NULL,
    Fibra_Optica INT NOT NULL,
    Wireless INT NOT NULL,
    Otros INT NOT NULL,
    Total INT NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Tot_Acce_Por_Tec_Int`;


-- 13.- TABLA Tot_Dial_BAf_Int
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Tot_Dial_BAf_Int`;
-- Creamos la tabla Tot_Dial_BAf_Int
CREATE TABLE Tot_Dial_BAf_Int (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Banda_Ancha_Fija INT NOT NULL,
    Dial_Up INT NOT NULL,
    Total INT NOT NULL,
    Periodo VARCHAR(50) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM Tot_Dial_BAf_Int LIMIT 10;


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


-- 15.- TABLA Velo_por_Prov_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Velocidad_Provincia`;
-- Creamos la tabla Velo_por_Prov_internet

CREATE TABLE Velo_por_Prov_internet (
    Año INT NOT NULL,
    Trimestre INT NOT NULL,
    Provincia VARCHAR(50) NOT NULL,
    Mbps_Media_Bajada DECIMAL(10,2) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Velo_por_Prov_internet`;


-- 16.- TABLA Vel_sin_Ran_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Vel_sin_Ran_internet`;
-- Creamos la tabla Vel_sin_Ran_internet

CREATE TABLE Vel_sin_Ran_internet (
    Fecha DATE,
    Provincia VARCHAR(100),
    Velocidad DECIMAL(10,2),
    Accesos INT,
    Id_Provincia INT
);
-- Verificamos la tabla creada
SELECT * FROM `Vel_sin_Ran_internet`;

-- 17.- TABLA mapa_conec_internet
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `mapa_conec_internet`;
-- Creamos la tabla mapa_conec_internet
CREATE TABLE mapa_conec_internet (
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


-- 18.- TABLA Fija_accesos_tot
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fi_Acc_tot`;
-- Creamos la tabla Telefonia_Fi_Acc_tot
CREATE TABLE Telefonia_Fi_Acc_tot (
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_Total INT,
    Accesos_Telefonia_Fija_Hogares INT,
    Accesos_Telefonia_Fija_Comercial INT,
    Accesos_Telefonia_Fija_Gobierno INT,
    Accesos_Telefonia_Fija_Otros INT
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fi_Acc_tot`;


-- 18.- TABLA Telefonia_Fi_Ingresos
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fi_Ingresos`;
-- Creamos la tabla Telefonia_Fi_Ingresos

CREATE TABLE Telefonia_Fi_Ingresos (
    Fecha DATE NOT NULL,
    Ingresos_Miles_Pesos DECIMAL(15,3) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fi_Ingresos`;

-- 19.- TABLA Telefonia_Fija_Pen_Prov
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Pen_Prov`;
-- Creamos la tabla Telefonia_Fija_Pen_Prov

CREATE TABLE Telefonia_Fija_Pen_Prov (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hab DECIMAL(10,6) NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hogares DECIMAL(10,6) NOT NULL
);
-- Verificamos la taTelefonia_Fija_Pen_Provbla creada
SELECT * FROM `Telefonia_Fija_Pen_Prov`;

-- 20.- TABLA Telefonia_Fija_Pen_Total
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fija_Pen_Total`;
-- Creamos la tabla Telefonia_Fija_Pen_Total
CREATE TABLE Telefonia_Fija_Pen_Total (
    Fecha DATE NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hab DECIMAL(10,6) NOT NULL,
    Accesos_Telefonia_Fija_por_100_Hogares DECIMAL(10,6) NOT NULL
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Fija_Pen_Total`;


-- 21.- TABLA Telefonia_Fij_Prov_Tip
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Fij_Prov_Tip`;
-- Creamos la tabla Telefonia_Fij_Prov_Tip

CREATE TABLE Telefonia_Fij_Prov_Tip (
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
SELECT * FROM `Telefonia_Fij_Prov_Tip`;

-- 22.- TABLA Accesos
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Telefonia_Mov_Acce`;
-- Creamos la tabla Accesos
CREATE TABLE Telefonia_Mov_Acce (
    Fecha DATE NOT NULL,
    Total_accesos_pospago FLOAT NOT NULL,
    Total_accesos_prepago FLOAT NOT NULL,
    Total_accesos_operativos INT NOT NULL,
    Periodo VARCHAR(50) NOT NULL,
    PRIMARY KEY (Fecha)
);
-- Verificamos la tabla creada
SELECT * FROM `Telefonia_Mov_Acce`;


-- 23.- Tabla Ingresos_Tel_Mov
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS Ingresos_Tel_Mov;
-- Creamos la tabla Ingresos_Tel_Mov
CREATE TABLE Ingresos_Tel_Mov (
    Fecha DATE NOT NULL,
    Ingresos_Miles_Dol BIGINT NOT NULL,
    PRIMARY KEY (Fecha)
);

-- Verificamos la tabla creada
SELECT * FROM Ingresos_Tel_Mov;

-- 24.-
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Llamadas_salientes_Tel_Movil`;

-- Creamos la tabla Llamadas_salientes_Tel_Movil
CREATE TABLE `Llamadas_salientes_Tel_Movil` (
    Fecha DATE NOT NULL,
    Llamadas_pospago_salientes_miles FLOAT NOT NULL,
    Llamadas_prepago_salientes_miles FLOAT NOT NULL,
    Total_llamadas_salientes_miles FLOAT NOT NULL,
    PRIMARY KEY (Fecha)
);

-- Verificamos que la tabla se haya creado correctamente
SELECT * FROM `Llamadas_salientes_Tel_Movil`;

-- 26.-TABLA
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Penetracion_Tel_Movil`;

-- Creamos la tabla Penetracion_Tel_Movil
CREATE TABLE Penetracion_Tel_Movil (
    Fecha DATE NOT NULL,
    Accesos_por_cada_100_hab FLOAT NOT NULL,
    PRIMARY KEY (Fecha)
);


-- Verificamos la tabla creada
SELECT * FROM `Penetracion_Tel_Movil`;


-- 27.-TABLA Accesos_prov_TV
-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `Accesos_prov_TV`;
-- Creamos la tabla Accesos_prov_TV
CREATE TABLE Accesos_prov_TV (
    Id_Provincia INT NOT NULL,
    Provincia VARCHAR(255) NOT NULL,
    Fecha DATE NOT NULL,
    Accesos_TV_por_suscripcion BIGINT NOT NULL,
    PRIMARY KEY (Id_Provincia, Fecha)
);
SELECT * FROM `Accesos_prov_TV`;

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

-- 29.-
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

-- 30.-
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

SELECT * FROM Penetracion_totales_TV LIMIT 10