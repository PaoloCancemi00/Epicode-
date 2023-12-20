# CREAZIONE DELLA TABELLA AEREOPORTO E INSERIMENTO DEI DATI 

CREATE TABLE Aeroporto (
    Citta VARCHAR(255) PRIMARY KEY,
    Nazione VARCHAR(255) NOT NULL,
    NumPiste INT 
);

INSERT INTO Aeroporto (Citta, Nazione, NumPiste) VALUES
    ('Torino', 'Italia', 6),
    ('Bologna', 'Italia', 4),
    ('Roma', 'Italia', 9),
    ('Parigi', 'Francia', NULL),
    ('Londra', 'Regno Unito', 8),
    ('Berlino', 'Germania', 3),
    ('Madrid', 'Spagna', 4),
    ('Amsterdam', 'Paesi Bassi', NULL),
    ('Atene', 'Grecia', 5),
    ('Istanbul', 'Turchia', 9);

# SELECT * FROM Aeroporto;

# CREAZIONE DELLA TABELLA VOLO E INSERIMENTO DEI DATI 

CREATE TABLE Volo (
    IdVolo varchar(255) PRIMARY KEY,
    GiornoSett VARCHAR(255) NOT NULL,
    CittaPart VARCHAR(255) NOT NULL,
    OraPart TIME NOT NULL,
    CittaArr VARCHAR(255) NOT NULL,
    OraArr TIME NOT NULL,
    TipoAereo VARCHAR(255) NOT NULL
);

INSERT INTO Volo (IdVolo, GiornoSett, CittaPart, OraPart, CittaArr, OraArr, TipoAereo) VALUES
    ('AB968', 'Lunedì', 'Torino', '08:00:00', 'Roma', '10:30:00', 'Airbus A320'),
    ('CD356', 'Martedì', 'Bologna', '12:45:00', 'Londra', '15:15:00', 'Boeing 737'),
    ('OL578', 'Mercoledì', 'Parigi', '10:30:00', 'Torino', '13:00:00', 'Boeing 747'),
    ('AZ274', 'Giovedì', 'Madrid', '14:15:00', 'Atene', '16:45:00', 'Airbus A330'),
    ('IU234', 'Venerdì', 'Amsterdam', '18:00:00', 'Roma', '20:30:00', 'Embraer E190'),
    ('PL458', 'Sabato', 'Berlino', '16:30:00', 'Bologna', '19:00:00', 'Airbus A321'),
    ('ML781', 'Domenica', 'Istanbul', '20:45:00', 'Torino', '23:15:00', 'Airbus A350'),
    ('GW125', 'Lunedì', 'Torino', '09:15:00', 'Atene', '11:45:00', 'Boeing 777'),
    ('RT236', 'Martedì', 'Bologna', '13:30:00', 'Istanbul', '16:00:00', 'Boeing 787'),
    ('ER852', 'Mercoledì', 'Roma', '17:45:00', 'Bologna', '20:15:00', 'Airbus A380');

# SELECT * FROM Volo;

# CREAZIONE DELLA TABELLA AEREO E INSERIMENTO DEI DATI 

CREATE TABLE AEREO (
    TipoAereo VARCHAR(255) PRIMARY KEY,
    NumPasseggeri INT NOT NULL,
    QtaMerci INT NOT NULL
);

INSERT INTO AEREO (TipoAereo, NumPasseggeri, QtaMerci) VALUES
    ('Boeing 747', 216, 187500),
    ('Airbus A320', 150, 37000),
    ('Embraer E190', 114, 17300),
    ('Boeing 777', 150, 200000),
    ('Airbus A330', 200, 134500),
    ('Boeing 787', 290, 118000),
    ('Airbus A321', 236, 41100),
    ('Airbus A350', 240, 141000),
    ('Boeing 737', 85, 11000),
    ('Airbus A380', 253, 297000);

# SELECT * FROM AEREO;

# QUERIES

#  1) Le città con un aeroporto di cui non è noto il numero di piste
    SELECT Citta FROM Aeroporto WHERE NumPiste IS NULL;

#  2) I tipi di aereo usati nei voli che partono da Torino
    SELECT TipoAereo FROM Volo WHERE CittaPart = 'Torino';

#  3) Le città da cui partono voli diretti a Bologna
    SELECT CittaPart FROM Volo WHERE CittaArr = 'Bologna';

#  4) Le città da cui parte e arriva il volo con codice AZ274
    SELECT CittaPart, CittaArr FROM Volo WHERE IdVolo = "AZ274";

# QUERIES EXTRA

#  5) Quali voli sono partiti nel weekend da città straniere? 
    SELECT IdVolo FROM Volo WHERE (GiornoSett = 'Sabato' OR GiornoSett = 'Domenica') AND CittaPart NOT IN ('Torino', 'Bologna', 'Roma');
    SELECT idVolo FROM Aeroporto, Volo WHERE citta=CittaPart AND GiornoSett IN ('Sab','Dom') AND Nazione != 'Italia';

#  6) Quale aereo ha la quantità di mercaìe maggiore di 100000?
    SELECT TipoAereo FROM AEREO WHERE QtaMerci > 100000; 

#  7) Quali aerei hanno la quantità merci tra 50 mila e 150 mila?
     SELECT TipoAereo FROM AEREO WHERE QtaMerci BETWEEN 50000 AND 150000;

# 8) Quale è l aereo con più merci?
     SELECT TipoAereo FROM AEREO ORDER BY QtaMerci DESC LIMIT 1;

# 9) Qual è il numero medio di piste negli aeroporti?
    SELECT ROUND (AVG (NumPiste)) FROM AEROPORTO;

# 10) Quali sono i voli che non partono dall italia
    SELECT idVolo from Aeroporto, Volo where citta=CittaPart AND Nazione!='Italia';

# 11) Quanti tipi di aerei tra i 150 e i 250 passeggeri possono portare la quantità di merce minore?
    SELECT TipoAereo FROM AEREO WHERE NumPasseggeri BETWEEN 150 AND 250 ORDER BY QtaMerci ASC LIMIT 1;

# 12) Nazioni da cui partono gli aerei il Mercoledì
    SELECT Nazione from Aeroporto, Volo where Citta=CittaPart AND GiornoSett = 'Mercoledì';





