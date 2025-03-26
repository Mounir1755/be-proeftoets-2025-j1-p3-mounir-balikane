-- Step: 01
-- ***************************************************************
-- Doel : Maak een nieuwe database aan met de naam Mvc_smartphone_2408A
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Smartphones
-- ***************************************************************

-- Verwijder database Mvc_smartphone_2408A
DROP DATABASE IF EXISTS `Mvc_smartphone_2408A`;

-- Maak een nieuwe database aan Mvc_smartphone_2408A
CREATE DATABASE `Mvc_smartphone_2408A`;

-- Gebruik database Mvc_smartphone_2408A
USE `Mvc_smartphone_2408A`;

-- Step: 02
-- ***************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Smartphones
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Tabel Smartphones
-- ***************************************************************
-- Onderstaande velden toevoegen aan de tabel Smartphones
-- Merk, Model, Prijs, Geheugen, Besturingssysteem, Schermgrootte
-- ***************************************************************

CREATE TABLE Smartphones
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL
    ,Prijs              DECIMAL(6,2)                NOT NULL
    ,Geheugen           DECIMAL(4,0)                NOT NULL
    ,OS        	    VARCHAR(30)                 NOT NULL
    ,Schermgrootte      VARCHAR(3)                  NOT NULL    
    ,ReleaseDatum       DATE                            NULL        DEFAULT NULL
    ,Megapixels         DECIMAL(4,1)                    NULL        DEFAULT NULL    
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Smartphones_Id           PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 03
-- ***************************************************************
-- Doel : Vul de tabel Smartphones met gegevens
-- ***************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           12-02-2025      Arjan de Ruijter    Vulling Smartphones
-- ***************************************************************

INSERT INTO Smartphones
(
      Merk
    , Model
    , Prijs
    , Geheugen
    , OS
    , Schermgrootte
    , ReleaseDatum
    , Megapixels
    , IsActief
    , Opmerking
    , DatumAangemaakt
    , DatumGewijzigd
)
VALUES
    ('Apple',   'iPhone 16',             899,  128, 'iOS',     '6.1', '2025-09-20', 12.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Apple',   'iPhone 16 Plus',        999,  256, 'iOS',     '6.7', '2025-09-20', 12.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Apple',   'iPhone 16 Pro',         1099, 512, 'iOS',     '6.1', '2025-09-20', 12.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Apple',   'iPhone 16 Pro Max',     1199, 1024, 'iOS',    '6.7', '2025-09-20', 12.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Samsung', 'Galaxy S25',            899,  128, 'Android', '6.2', '2025-02-15', 50.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Samsung', 'Galaxy S25+',           999,  256, 'Android', '6.7', '2025-02-15', 50.0, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Samsung', 'Galaxy S25 Ultra',      1011, 512, 'Android', '6.8', '2025-02-15', 108.0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Samsung', 'Galaxy S25 Ultra Plus', 1111, 1024, 'Android','6.9', '2025-02-15', 108.0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Google',  'Pixel 9',               925,  128, 'Android', '6.3', '2025-10-10', 12.2, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Google',  'Pixel 9 Plus',          1025, 256, 'Android', '6.7', '2025-10-10', 12.2, 1,  NULL, SYSDATE(6), SYSDATE(6)),
    ('Google',  'Pixel 9 Pro',           1025, 512, 'Android', '6.7', '2025-10-10', 12.2, 1,  NULL, SYSDATE(6), SYSDATE(6));

    
-- Step: 04
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Sneakers
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Arjan de Ruijter    Tabel Sneakers
-- *****************************************************************************************************
-- Onderstaande velden toevoegen aan de tabel Sneakers
-- Type (Hardloop, Basketbal, Casual), Prijs, Materiaal (Leer, Mesh, Synthetisch), Gewicht, Releasedatum
-- *****************************************************************************************************

CREATE TABLE Sneakers
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL	
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Smartphones_Id    PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 04
-- *****************************************************************
-- Doel : Vul de tabel Sneakers met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Arjan de Ruijter    Vulling Sneakers
-- *****************************************************************

INSERT INTO Sneakers
(
      Merk
     ,Model
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Nike', 'Air Jordan 1', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Adidas', 'Yeezy Boost 350', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('New Balance', 'Pixel 9 Pro', 1, NULL, SYSDATE(6), SYSDATE(6));



-- Step: 04
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Koenigsegg
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Mounir Balikane    Tabel Sneakers
-- *****************************************************************************************************
-- Onderstaande velden toevoegen aan de tabel Sneakers
-- Merk, model, PK, Koppel in Nm, prijs, release datum en of dit mijn droom auto is (ja of nee).
-- *****************************************************************************************************

CREATE TABLE koenigsegg
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Merk               VARCHAR(50)                 NOT NULL
    ,Model              VARCHAR(50)                 NOT NULL	
    ,PaardenKracht      DECIMAL(4,0)                NOT NULL
    ,Koppel             DECIMAL(4,0)                NOT NULL
    ,Prijs              DECIMAL(8,0)                NOT NULL
    ,ReleaseDatum       VARCHAR(12)                 NOT NULL
    ,DroomAuto          BIT                         NOT NULL        DEFAULT 0
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Smartphones_Id    PRIMARY KEY     CLUSTERED(Id)   
)ENGINE=InnoDB;


-- Step: 05
-- *****************************************************************************************************
-- Doel : vul tabel aan met de Koenigseggs
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-02-2025      Mounir Balikane     Vulling Koenigsegg
-- ***************************************************************

INSERT INTO koenigsegg
(
      Merk
    , Model
    , PaardenKracht
    , Koppel
    , Prijs
    , ReleaseDatum
    , DroomAuto
    , IsActief
    , Opmerking
    , DatumAangemaakt
    , DatumGewijzigd
)
VALUES
    ('Koenigsegg', 'CC8S', 655, 750, 685000, '2002-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'CCR', 806, 920, 1900000, '2004-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'CCX', 806, 920, 2100000, '2006-01-01', 1, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'CCXR', 1018, 1060, 4800000, '2007-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Agera', 947, 1100, 3670000, '2010-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Agera R', 1140, 1200, 3500000, '2011-01-01', 1, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Agera S', 1030, 1100, 3600000, '2012-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'One:1', 1341, 1371,  6545000, '2014-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Regera', 1500, 2000, 1890000, '2016-01-01', 1, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Jesko', 1600, 1500, 300000, '2019-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Gemera', 1700, 3500, 2600000, '2020-01-01', 1, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Jesko Absolut', 1600, 1500, 3000000, '2020-01-01', 0, 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Koenigsegg', 'Jesko Attack', 1600, 1500, 4248300, '2021-01-01', 1, 1, NULL, SYSDATE(6), SYSDATE(6));





 -- Step: 12
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Zangeres
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-03-2025      Arjan de Ruijter    Tabel Zangeres
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Zangeres
-- *****************************************************************************************************

CREATE TABLE Zangeres
(
     Id                 SMALLINT        UNSIGNED    NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(50)                 NOT NULL
    ,Nettowaarde        SMALLINT        UNSIGNED    NOT NULL
    ,Land               VARCHAR(50 )                NOT NULL
    ,Mobiel             VARCHAR(30)                 NOT NULL
    ,Leeftijd           TINYINT         UNSIGNED    NOT NULL
    ,IsActief           BIT                         NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                    NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                 NOT NULL
    ,DatumGewijzigd     DATETIME(6)                 NOT NULL
    ,CONSTRAINT         PK_Zangeres_Id              PRIMARY KEY     CLUSTERED(Id)
) ENGINE=InnoDB;

-- Step: 13
-- *****************************************************************
-- Doel : Vul de tabel Zangeres met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           18-3-2025      Arjan de Ruijter     Vulling Zangeres
-- *****************************************************************

INSERT INTO Zangeres
(
      Naam
     ,Nettowaarde
     ,Land
     ,Mobiel
     ,Leeftijd
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
  ('Rihanna', 1400,'Barbados', '+1246 2400 1862400', 36, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Madonna', 575,'Verenigde Staten', '+13425 182345', 65, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Taylor Swift', 570,'Verenigde Staten', '+13421 231356', 34, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Beyoncé', 420,'Verenigde Staten', '+18723 213481', 41, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Jennifer Lopez', 400,'Verenigde Staten', '+16254 751243', 54, 1, NULL, SYSDATE(6), SYSDATE(6));
 
 -- Step: 14
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Ufc
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           26-03-2025      Arjan de Ruijter    Tabel Ufc
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Ufc
-- *****************************************************************************************************

CREATE TABLE Ufc
(
     Id                 SMALLINT        UNSIGNED       NOT NULL        AUTO_INCREMENT
    ,Naam               VARCHAR(100)                   NOT NULL
    ,RanglijstNummer    INT             UNSIGNED       NOT NULL
    ,Lengte             DECIMAL(3,2)    UNSIGNED       NOT NULL
    ,Gewicht            DECIMAL(3,0)    UNSIGNED       NOT NULL
    ,Leeftijd           DECIMAL(3,0)    UNSIGNED       NOT NULL
    ,WinstDoorKnockout  DECIMAL(3,0)    UNSIGNED       NOT NULL
    ,IsActief           BIT                            NOT NULL        DEFAULT 1
    ,Opmerking          VARCHAR(255)                       NULL        DEFAULT NULL
    ,DatumAangemaakt    DATETIME(6)                    NOT NULL
    ,DatumGewijzigd     DATETIME(6)                    NOT NULL
    ,CONSTRAINT         PK_Ufc_Id       PRIMARY KEY    CLUSTERED(Id)
) ENGINE=InnoDB;
-- Step: 15
-- *****************************************************************
-- Doel : Vul de tabel Ufc met gegevens
-- *****************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           26-3-2025      Arjan de Ruijter     Vulling Ufc
-- *****************************************************************
 INSERT INTO Ufc
(
      Naam
     ,RanglijstNummer
     ,Lengte
     ,Gewicht
     ,Leeftijd
     ,WinstDoorKnockout
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
  ('Islam Makhachev', 3, 1.78, 70, 32, 5, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Jon Jones', 1, 1.93, 112, 36, 11, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Israel Adesanya', 5, 1.93, 84, 34, 16, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Alexander Volkanovski', 2, 1.68, 66, 35, 13, 1, NULL, SYSDATE(6), SYSDATE(6))
 ,('Leon Edwards', 4, 1.83, 77, 32, 8, 1, NULL, SYSDATE(6), SYSDATE(6));