-- step 01
-- **************************************************************
-- Doel : maak een nieuwe database voor het opslaan van Gebruikers
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Database Maken
-- **************************************************************

-- Verwijder Database 
DROP DATABASE IF EXISTS `fitforfunDB`;

-- Maak een nieuwe database aan fitforfunDB 
CREATE DATABASE `fitforfunDB`;

-- Gebruik maken van database
USE `fitforfunDB`;

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

-- step 03
-- **************************************************************
-- Doel : Vul de tabel Gebruikers met gegevens
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane      Vullen
--                                          Gebruiker
-- **************************************************************

INSERT INTO Gebruiker
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Gebruikersnaam
    ,Wachtwoord
    ,IsIngelogd
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    ('Mounir', '', 'Balikane', 'MBalikane030', 'Mounir030!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jan', 'Peter', 'Pan', 'JPP123', 'diktrom123!?x12', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Alice', '', 'Wonderland', 'AliceW', 'alice123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Bob', 'van', 'Builder', 'BobB', 'bobBuilder!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Charlie', '', 'Brown', 'CharlieB', 'charlie123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('David', '', 'Smith', 'DavidS', 'david123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Eve', '', 'Johnson', 'EveJ', 'eve123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Frank', '', 'Williams', 'FrankW', 'frank123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Grace', '', 'Jones', 'GraceJ', 'grace123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Hank', '', 'Brown', 'HankB', 'hank123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Ivy', '', 'Davis', 'IvyD', 'ivy123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jack', '', 'Miller', 'JackM', 'jack123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Kathy', '', 'Wilson', 'KathyW', 'kathy123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Leo', '', 'Moore', 'LeoM', 'leo123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Mia', '', 'Taylor', 'MiaT', 'mia123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Nina', '', 'Anderson', 'NinaA', 'nina123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Oscar', '', 'Thomas', 'OscarT', 'oscar123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Paul', '', 'Jackson', 'PaulJ', 'paul123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Quinn', '', 'White', 'QuinnW', 'quinn123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Rita', '', 'Harris', 'RitaH', 'rita123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Sam', '', 'Martin', 'SamM', 'sam123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Tina', '', 'Thompson', 'TinaT', 'tina123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Uma', '', 'Garcia', 'UmaG', 'uma123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Victor', '', 'Martinez', 'VictorM', 'victor123!', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Wendy', '', 'Robinson', 'WendyR', 'wendy123!', 1, NULL, SYSDATE(6), SYSDATE(6));







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

-- step 02
-- **************************************************************
-- Doel : Vul de tabel Rol met Rollen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Vullen Rollen
-- **************************************************************

INSERT INTO Rol
(
     GebruikerId
    ,Naam
    ,IsActief
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    (1, 'Admin', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,(2, 'User', 1, NULL, SYSDATE(6), SYSDATE(6));








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
    ,Medewerkersoort   VARCHAR(20)                        NOT NULL
    ,IsActief           BIT                                NOT NULL    DEFAULT 1
    ,Opmerking          VARCHAR(250)                           NULL    DEFAULT NULL    
    ,DatumAangemaakt    DATETIME(6)                        NOT NULL
    ,DatumGewijzigd     DATETIME(6)                        NOT NULL
) ENGINE=InnoDB;           

-- step 02
-- **************************************************************
-- Doel : Vul de tabel medewerker met gegevens van Medewerkers
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Vullen Medewerkers
-- **************************************************************

INSERT INTO Medewerker
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Nummer
    ,Medewerkersoort
    ,IsActief
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    ('Mounir', '', 'Balikane', 612345678, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Erik', '', 'Bouwman', 612345679, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jollanda', 'Van Der', 'Meer', 612345680, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Alice', '', 'Wonderland', 612345681, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Bob', 'van', 'Builder', 612345682, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Charlie', '', 'Brown', 612345683, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('David', '', 'Smith', 612345684, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Eve', '', 'Johnson', 612345685, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Frank', '', 'Williams', 612345686, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Grace', '', 'Jones', 612345687, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Hank', '', 'Brown', 612345688, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Ivy', '', 'Davis', 612345689, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jack', '', 'Miller', 612345690, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Kathy', '', 'Wilson', 612345691, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Leo', '', 'Moore', 612345692, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Mia', '', 'Taylor', 612345693, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Nina', '', 'Anderson', 612345694, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Oscar', '', 'Thomas', 612345695, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Paul', '', 'Jackson', 612345696, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Quinn', '', 'White', 612345697, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Rita', '', 'Harris', 612345698, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Sam', '', 'Martin', 612345699, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Tina', '', 'Thompson', 612345700, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Uma', '', 'Garcia', 612345701, 'Desk medewerker', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Victor', '', 'Martinez', 612345702, 'Manager', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Wendy', '', 'Robinson', 612345703, 'Beheerder', 1, NULL, SYSDATE(6), SYSDATE(6));





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

-- step 02
-- **************************************************************
-- Doel : Vul de tabel medewerker met gegevens van Leden
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Vullen Leden
-- **************************************************************

INSERT INTO Lid
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Relatienummer
    ,Mobiel
    ,Email
    ,IsActief
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    ('Mounir', '', 'Balikane', 23492525, '06-12345678', 'mbalikane@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Erik', '', 'Bouwman', 21345637, '06-12345678', 'EBouwmn@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jollanda', 'Van Der', 'Meer', 0612345678, '06-12345678', 'JVDM@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Alice', '', 'Wonderland', 23492526, '06-12345679', 'alice@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Bob', 'van', 'Builder', 23492527, '06-12345680', 'bob@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Charlie', '', 'Brown', 23492528, '06-12345681', 'charlie@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('David', '', 'Smith', 23492529, '06-12345682', 'david@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Eve', '', 'Johnson', 23492530, '06-12345683', 'eve@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Frank', '', 'Williams', 23492531, '06-12345684', 'frank@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Grace', '', 'Jones', 23492532, '06-12345685', 'grace@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Hank', '', 'Brown', 23492533, '06-12345686', 'hank@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Ivy', '', 'Davis', 23492534, '06-12345687', 'ivy@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Jack', '', 'Miller', 23492535, '06-12345688', 'jack@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Kathy', '', 'Wilson', 23492536, '06-12345689', 'kathy@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Leo', '', 'Moore', 23492537, '06-12345690', 'leo@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Mia', '', 'Taylor', 23492538, '06-12345691', 'mia@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Nina', '', 'Anderson', 23492539, '06-12345692', 'nina@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Oscar', '', 'Thomas', 23492540, '06-12345693', 'oscar@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Paul', '', 'Jackson', 23492541, '06-12345694', 'paul@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Quinn', '', 'White', 23492542, '06-12345695', 'quinn@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Rita', '', 'Harris', 23492543, '06-12345696', 'rita@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Sam', '', 'Martin', 23492544, '06-12345697', 'sam@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Tina', '', 'Thompson', 23492545, '06-12345698', 'tina@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Uma', '', 'Garcia', 23492546, '06-12345699', 'uma@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Victor', '', 'Martinez', 23492547, '06-12345700', 'victor@example.com', 1, NULL, SYSDATE(6), SYSDATE(6)),
    ('Wendy', '', 'Robinson', 23492548, '06-12345701', 'wendy@example.com', 1, NULL, SYSDATE(6), SYSDATE(6));



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

-- step 02
-- **************************************************************
-- Doel : Vul de tabel medewerker met gegevens van Lessen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Vullen Lessen
-- **************************************************************

INSERT INTO Les
(
     Naam
    ,Datum
    ,Tijd
    ,MinAantalPersonen
    ,MaxAantalPersonen
    ,Beschikbaarheid
    ,IsActief
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    ('Yoga', '2024-11-14', '10:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Zumba', '2024-11-14', '11:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Pilates', '2024-11-14', '12:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Spinning', '2024-11-14', '13:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Bodypump', '2024-11-14', '14:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Bodycombat', '2024-11-14', '15:00:00', 3, 9, 'Beschikbaar', 1, NULL, SYSDATE(6), SYSDATE(6));

   




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

-- step 02
-- **************************************************************
-- Doel : Vul de tabel medewerker met gegevens van Reseveringen
-- **************************************************************
-- versie  Datum        Auteur               Omschrijving
-- ******  *****        ******               ************
-- 01     14-11-2024   Mounir Balikane       Vullen Reseveringen
-- **************************************************************

INSERT INTO Resevering
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Relatienummer
    ,Mobiel
    ,Datum
    ,Tijd
    ,Reseveringstatus
    ,IsActief
    ,Opmerking
    ,DatumAangemaakt
    ,DatumGewijzigd
)
VALUES
    ('Mounir', '', 'Balikane', 23492525, '06-12345678', '2024-11-14', '10:00:00', 'Gereserveerd', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Erik', '', 'Bouwman', 21345637, '06-12345678', '2024-11-14', '11:00:00', 'Gereserveerd', 1, NULL, SYSDATE(6), SYSDATE(6))
   ,('Jollanda', 'Van Der', 'Meer', 0612345678, '06-12345678', '2024-11-14', '12:00:00', 'Gereserveerd', 1, NULL, SYSDATE(6), SYSDATE(6));


