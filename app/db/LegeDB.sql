-- step 01
-- **************************************************************
-- Doel : maak een nieuwe database voor het opslaan van Gebruikers
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Database Maken
-- **************************************************************

-- Verwijder Database 
DROP DATABASE IF EXISTS `fitforfunDBleeg`;

-- Maak een nieuwe database aan fitforfunDB 
CREATE DATABASE `fitforfunDBleeg`;

-- Gebruik maken van database
USE `fitforfunDBleeg`;

-- step 02
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Gebruikers
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane      Tabel
--                                          Gerbuiker
-- **************************************************************

CREATE TABLE Gebruiker
(
     Id              INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,Voornaam        VARCHAR(50)                        NOT NULL
    ,Tussenvoegsel   VARCHAR(10)                            NULL
    ,Achternaam      VARCHAR(50)                        NOT NULL
    ,Gebruikersnaam  VARCHAR(100)                       NOT NULL
    ,Wachtwoord      VARCHAR(20)                        NOT NULL
    ,IsIngelogd      BIT                                NOT NULL
    ,Ingelogd        DATE                                   NULL
    ,Uitgelogd       DATE                                   NULL
    ,IsActief        BIT                                NOT NULL    DEFAULT 1
    ,Opmerking       VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt DATETIME(6)                        NOT NULL
    ,DatumGewijzigd  DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;        


-- step 01
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Rollen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024    Mounir Balikane       Tabel Rol
-- **************************************************************

CREATE TABLE Rol
(
     Id              INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,GebruikerId     INT                                NOT NULL
    ,Naam            VARCHAR(100)                       NOT NULL
    ,IsActief        BIT                                NOT NULL    DEFAULT 1
    ,Opmerking       VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt DATETIME(6)                        NOT NULL
    ,DatumGewijzigd  DATETIME(6)                        NOT NULL
    ,FOREIGN KEY (GebruikerId) REFERENCES Gebruiker(Id)
) ENGINE=InnoDB;        


-- step 01
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Medewerkers
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane      Tabel
--                                          Mederwerkers
-- **************************************************************

CREATE TABLE Medewerker
(
     Id                 INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,Voornaam           VARCHAR(50)                        NOT NULL
    ,Tussenvoegsel      VARCHAR(10)                            NULL
    ,Achternaam         VARCHAR(50)                        NOT NULL
    ,Nummer             INT                                NOT NULL
    ,Mederwerkersoort   VARCHAR(20)                        NOT NULL
    ,IsActief           BIT                                NOT NULL    DEFAULT 1
    ,Opmerking          VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt    DATETIME(6)                        NOT NULL
    ,DatumGewijzigd     DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;           


-- step 01
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Leden
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Tabel Lid
-- **************************************************************

CREATE TABLE Lid
(
     Id                 INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,Voornaam           VARCHAR(50)                        NOT NULL
    ,Tussenvoegsel      VARCHAR(10)                            NULL
    ,Achternaam         VARCHAR(50)                        NOT NULL
    ,Relatienummer      INT                                NOT NULL
    ,Mobiel             VARCHAR(20)                        NOT NULL
    ,Email              VARCHAR(100)                       NOT NULL
    ,IsActief           BIT                                NOT NULL    DEFAULT 1
    ,Opmerking          VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt    DATETIME(6)                        NOT NULL
    ,DatumGewijzigd     DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;           

-- step 01
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Lessen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Tabel Les
-- **************************************************************

CREATE TABLE Les
(
     Id                 INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,Naam               VARCHAR(50)                        NOT NULL
    ,Datum              DATE                               NOT NULL
    ,Tijd               TIME                               NOT NULL
    ,MinAantalPersonen  TINYINT                            NOT NULL
    ,MaxAantalPersonen  TINYINT                            NOT NULL
    ,Beschikbaarheid    VARCHAR(50)                        NOT NULL
    ,IsActief           BIT                                NOT NULL    DEFAULT 1
    ,Opmerking          VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt    DATETIME(6)                        NOT NULL
    ,DatumGewijzigd     DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;           

-- step 01
-- **************************************************************
-- Doel : Maak een nieuwe tabel voor het opslaan van Reseveringen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Tabel Resevering
-- **************************************************************

CREATE TABLE Resevering
(
     Id                 INT                                NOT NULL    PRIMARY KEY   AUTO_INCREMENT
    ,Voornaam           VARCHAR(50)                        NOT NULL
    ,Tussenvoegsel      VARCHAR(10)                            NULL
    ,Achternaam         VARCHAR(50)                        NOT NULL
    ,Relatienummer      INT                                NOT NULL
    ,Mobiel             VARCHAR(20)                        NOT NULL
    ,Datum              DATE                               NOT NULL
    ,Tijd               TIME                               NOT NULL
    ,Reseveringstatus   VARCHAR(20)                        NOT NULL
    ,IsActief           BIT                                NOT NULL    DEFAULT 1
    ,Opmerking          VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt    DATETIME(6)                        NOT NULL
    ,DatumGewijzigd     DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;           
