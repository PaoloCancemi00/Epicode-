# AZIENDA E-COMMERCE

# Creazione della tabella vendite
CREATE TABLE vendite (
    id_transazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(50),
    costo_vendita DECIMAL(10, 2),
    sconto DECIMAL(5, 2)
);

INSERT INTO vendite (id_transazione, categoria_prodotto, costo_vendita, sconto)
VALUES
    (1, 'Elettronica', 500.00, 60.00),
    (2, 'Abbigliamento', 100.00, 15.00),
    (3, 'Libri', 30.00, 30.00),
    (4, 'Casa', 200.00, 55.00),
    (5, 'Cibo', 50.00, 30.0),
    (6, 'Abbigliamento', 80.00, 10.00),
    (7, 'Cibo', 25.00, 5.00),
    (8, 'Elettronica', 600.00, 15.00),
    (9, 'Libri', 40.00, 80.00),
    (10, 'Casa', 250.00, 60.00),
    (11, 'Elettronica', 700.00, 15.00),
    (12, 'Abbigliamento', 120.00, 5.00),
    (13, 'Cibo', 30.00, 40.00),
    (14, 'Libri', 35.00, 60.00),
    (15, 'Casa', 180.00, 10.00),
    (16, 'Abbigliamento', 90.00, 25.00),
    (17, 'Libri', 25.00, 10.00),
    (18, 'Casa', 150.00, 20.00),
    (19, 'Elettronica', 550.00, 70.00),
    (20, 'Cibo', 40.00, 15.00),
    (21, 'Abbigliamento', 110.00, 35.00),
    (22, 'Sport', 180.00, 10.00),
    (23, 'Elettronica', 800.00, 30.00),
    (24, 'Libri', 28.00, 55.00),
    (25, 'Cibo', 45.00, 10.00),
    (26, 'Casa', 220.00, 15.00),
    (27, 'Arredamento', 650.00, 25.00),
    (28, 'Abbigliamento', 95.00, 70.00),
    (29, 'Arredamento', 35.00, 80.00),
    (30, 'Libri', 32.00, 35.00),
    (31, 'Casa', 190.00, 15.00),
    (32, 'Abbigliamento', 75.00, 20.00),
    (33, 'Elettronica', 720.00, 40.00),
    (34, 'Sport', 55.00, 60.00),
    (35, 'Libri', 22.00, 50.00),
    (36, 'Casa', 210.00, 25.00),
    (37, 'Abbigliamento', 105.00, 10.00),
    (38, 'Giardinaggio', 600.00, 15.00),
    (39, 'Libri', 30.00, 10.00),
    (40, 'Cibo', 48.00, 15.00),
    (41, 'Abbigliamento', 88.00, 80.00),
    (42, 'Casa', 240.00, 30.00),
    (43, 'Elettronica', 680.00, 20.00),
    (44, 'Libri', 26.00, 60.00),
    (45, 'Cibo', 42.00, 15.00),
    (46, 'Sport', 120.00, 25.00),
    (47, 'Giardinaggio', 75.00, 20.00),
    (48, 'Abbigliamento', 140.00, 15.00),
    (49, 'Arredamento', 60.00, 80.00),
    (50, 'Sport', 95.00, 35.00);

# Creazione della tabella dettagli_vendite
CREATE TABLE dettagli_vendite (
    id_cliente INT,
    id_transazione INT PRIMARY KEY,
    data_transazione DATE,
    quantita INT
);

INSERT INTO dettagli_vendite (id_cliente, id_transazione, data_transazione, quantita)
VALUES
    (10001, 1, '2023-01-08', 2),
    (10002, 2, '2023-02-09', 3),
    (10004, 3, '2023-03-10', 1),
    (10003, 4, '2023-04-11', 1),
    (10004, 5, '2023-04-12', 1),
    (10005, 6, '2023-05-13', 2),
    (10001, 7, '2023-06-14', 3),
    (10002, 8, '2023-07-15', 1),
    (10006, 9, '2023-08-16', 2),
    (10007, 10, '2023-09-17', 1),
    (10008, 11, '2023-09-18', 2),
    (10005, 12, '2023-10-05', 1),
    (10007, 13, '2023-11-20', 4),
    (10009, 14, '2023-11-21', 2),
    (10010, 15, '2023-12-22', 3),
    (10018, 16, '2024-01-5', 1),
    (10001, 17, '2023-05-15', 2),
    (10002, 18, '2023-06-18', 3),
    (10003, 19, '2023-07-22', 1),
    (10004, 20, '2023-08-24', 1),
    (10005, 21, '2023-09-27', 1),
    (10006, 22, '2023-10-30', 2),
    (10007, 23, '2023-11-02', 3),
    (10018, 24, '2023-12-08', 1),
    (10009, 25, '2023-01-10', 2),
    (10010, 26, '2023-02-12', 1),
    (10001, 27, '2023-03-15', 2),
    (10012, 28, '2023-04-18', 2),
    (10003, 29, '2023-05-22', 1),
    (10004, 30, '2023-06-24', 1),
    (10005, 31, '2023-07-27', 1),
    (10006, 32, '2023-08-30', 2),
    (10007, 33, '2023-09-02', 3),
    (10008, 34, '2023-10-08', 1),
    (10009, 35, '2023-11-10', 2),
    (10010, 36, '2023-12-12', 1),
    (10012, 37, '2023-01-15', 2),
    (10002, 38, '2023-02-18', 2),
    (10013, 39, '2023-03-22', 1),
    (10004, 40, '2023-04-24', 1),
    (10005, 41, '2023-05-27', 1),
    (10006, 42, '2023-06-30', 2),
    (10007, 43, '2023-07-02', 3),
    (10008, 44, '2023-08-08', 1),
    (10009, 45, '2023-09-10', 2),
    (10010, 46, '2023-10-15', 2),
    (10002, 47, '2023-11-03', 3),
    (10004, 48, '2023-12-04', 1),
    (10004, 49, '2024-01-05', 1),
    (10005, 50, '2024-01-07', 1);

# Creazione tabella clienti
CREATE TABLE clienti (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    email VARCHAR(50),
    indirizzo VARCHAR(100)
);

INSERT INTO clienti (id_cliente, nome, cognome, email, indirizzo)
VALUES
    (10001, 'Mario', 'Rossi', 'mario.rossi@email.com', 'Via Roma, 123'),
    (10002, 'Anna', 'Verdi', 'anna.verdi@email.com', 'Via Garibaldi, 45'),
    (10003, 'Luca', 'Bianchi', 'luca.bianchi@email.com', 'Corso Vittorio Emanuele, 78'),
    (10004, 'Giulia', 'Ferrari', 'giulia.ferrari@email.com', 'Via Dante, 56'),
    (10005, 'Marco', 'Rizzo', 'marco.rizzo@email.com', 'Via Michelangelo, 34'),
    (10006, 'Elena', 'Conti', 'elena.conti@email.com', 'Corso Umberto, 87'),
    (10007, 'Alessia', 'Moretti', 'alessia.moretti@email.com', 'Via Leonardo, 21'),
    (10008, 'Fabio', 'Gallo', 'fabio.gallo@email.com', 'Corso Cavour, 76'),
    (10009, 'Laura', 'Vitali', 'laura.vitali@email.com', 'Via Mazzini, 109'),
    (10010, 'Roberto', 'Palmieri', 'roberto.palmieri@email.com', 'Corso Italia, 44'),
    (10011, 'Simona', 'Marini', 'simona.marini@email.com', 'Via Verdi, 67'),
    (10012, 'Davide', 'Fabbri', 'davide.fabbri@email.com', 'Via Foscolo, 98'),
    (10013, 'Giovanni', 'Mancini', 'giovanni.mancini@email.com', 'Corso Matteotti, 32'),
    (10014, 'Serena', 'Lombardi', 'serena.lombardi@email.com', 'Via Galileo, 54'),
    (10015, 'Michele', 'Coppola', 'michele.coppola@email.com', 'Corso Vittorio Emanuele II, 12');

CREATE TABLE prodotti (
    id_prodotto INT PRIMARY KEY,
    nome_prodotto VARCHAR(100),
    categoria VARCHAR(50),
    QuantitaDisponibile INT
);

INSERT INTO prodotti (id_prodotto, nome_prodotto, categoria, QuantitaDisponibile)
VALUES
    -- Elettronica
    (1, 'Smartphone XYZ', 'Elettronica', 20),
    (2, 'Laptop ABC', 'Elettronica', 15),
    (3, 'Auricolari Bluetooth', 'Elettronica', 30),

    -- Abbigliamento
    (4, 'Maglione Lana', 'Abbigliamento', 25),
    (5, 'Scarpe Sportive', 'Abbigliamento', 18),
    (6, 'Cappello Estivo', 'Abbigliamento', 40),

    -- Libri
    (7, 'Romanzo Avventura', 'Libri', 50),
    (8, 'Saggio Filosofico', 'Libri', 12),
    (9, 'Libro per Bambini', 'Libri', 35),

    -- Casa
    (10, 'Tovaglia Righe', 'Casa', 30),
    (11, 'Set di Pentole', 'Casa', 7),
    (12, 'Cuscini Decorativi', 'Casa', 25),

    -- Cibo
    (13, 'Confezione Pasta', 'Cibo', 40),
    (14, 'Scatola di Cioccolatini', 'Cibo', 22),
    (15, 'Caffè Arabica', 'Cibo', 50),

    -- Sport
    (16, 'Palla da Calcio', 'Sport', 25),
    (17, 'Manubri Pesanti', 'Sport', 15),
    (18, 'Scarpe da Corsa', 'Sport', 30),

    -- Arredamento
    (19, 'Tavolo da Pranzo', 'Arredamento', 10),
    (20, 'Lampada da Terra', 'Arredamento', 8),
    (21, 'Divano Comodo', 'Arredamento', 15),

    -- Giardinaggio
    (22, 'Set Attrezzi da Giardino', 'Giardinaggio', 20),
    (23, 'Piante Fiorite', 'Giardinaggio', 30),
    (24, 'Sedia da Giardino', 'Giardinaggio', 12);
  

# Tabella ordini 2022
CREATE TABLE ordini_2022 (
    id_ordine INT PRIMARY KEY,
    id_prodotto INT,
    categoria_prodotto VARCHAR(50),
    data_vendita DATE,
    prezzo_prodotto DECIMAL(10, 2),
    quantita_venduta INT
);

INSERT INTO ordini_2022 (id_ordine, id_prodotto, categoria_prodotto, data_vendita, prezzo_prodotto, quantita_venduta)
VALUES
    (10, 22, 'Giardinaggio', '2022-01-03', 45.00, 2),
    (11, 4, 'Abbigliamento', '2022-02-08', 75.00, 1),
    (12, 11, 'Casa', '2022-03-15', 150.00, 3),
    (13, 7, 'Libri', '2022-04-20', 28.00, 4),
    (14, 2, 'Elettronica', '2022-05-25', 600.00, 1),
    (15, 20, 'Arredamento', '2022-06-30', 35.00, 2),
    (16, 13, 'Cibo', '2022-07-05', 48.00, 1),
    (17, 3, 'Libri', '2022-08-10', 40.00, 3),
    (18, 16, 'Sport', '2022-09-15', 55.00, 2),
    (19, 5, 'Cibo', '2022-10-20', 42.00, 1),
    (20, 9, 'Libri', '2022-11-25', 30.00, 4),
    (21, 18, 'Sport', '2022-12-30', 95.00, 2),
    (22, 1, 'Elettronica', '2022-01-05', 500.00, 1),
    (23, 15, 'Casa', '2022-02-10', 180.00, 3),
    (24, 6, 'Abbigliamento', '2022-03-15', 80.00, 2),
    (25, 10, 'Casa', '2022-04-20', 250.00, 1),
    (26, 14, 'Libri', '2022-05-25', 35.00, 2),
    (27, 19, 'Elettronica', '2022-06-30', 550.00, 1),
    (28, 8, 'Cibo', '2022-07-05', 50.00, 3),
    (29, 17, 'Libri', '2022-08-10', 22.00, 4),
    (30, 12, 'Casa', '2022-09-15', 200.00, 2),
    (31, 21, 'Arredamento', '2022-10-20', 240.00, 1),
    (32, 16, 'Sport', '2022-11-25', 120.00, 3),
    (33, 1, 'Elettronica', '2022-12-30', 700.00, 2),
    (34, 14, 'Libri', '2022-01-05', 35.00, 4),
    (35, 7, 'Cibo', '2022-02-10', 45.00, 1),
    (36, 23, 'Elettronica', '2022-03-15', 800.00, 2),
    (37, 18, 'Sport', '2022-04-20', 55.00, 1),
    (38, 2, 'Elettronica', '2022-05-25', 600.00, 3),
    (39, 15, 'Casa', '2022-06-30', 210.00, 2),
    (40, 9, 'Libri', '2022-07-05', 32.00, 1),
    (41, 22, 'Giardinaggio', '2022-08-10', 75.00, 4),
    (42, 8, 'Cibo', '2022-09-15', 48.00, 2),
    (43, 19, 'Elettronica', '2022-10-20', 680.00, 1),
    (44, 16, 'Sport', '2022-11-25', 95.00, 3),
    (45, 6, 'Abbigliamento', '2022-12-30', 88.00, 1),
    (46, 10, 'Casa', '2022-01-05', 150.00, 2),
    (47, 24, 'Giardinaggio', '2022-02-10', 35.00, 1),
    (48, 13, 'Cibo', '2022-03-15', 48.00, 3),
    (49, 4, 'Abbigliamento', '2022-04-20', 100.00, 2),
    (50, 11, 'Casa', '2022-05-25', 200.00, 1);

/*
# QUERIES EXTRA

# 1) Quantità totale venduta per categoria di prodotto nell'anno 2022:
SELECT categoria_prodotto, SUM(quantita_venduta) AS quantita_totale
FROM ordini_2022
GROUP BY categoria_prodotto;

# 2) Totale delle vendite di un prodotto specifico:
SELECT p.nome_prodotto, SUM(v.costo_vendita) AS totale_vendite
FROM prodotti p
JOIN vendite v ON p.id_prodotto = v.id_transazione
GROUP BY p.nome_prodotto;

# 3) Clienti che hanno effettuato acquisti nell'ultimo mese:
SELECT c.nome, c.cognome
FROM clienti c
JOIN dettagli_vendite dv ON c.id_cliente = dv.id_cliente
WHERE dv.data_transazione >= CURDATE() - INTERVAL 1 MONTH;

# 4) Prodotti con disponibilità inferiore a 10 unità:
SELECT nome_prodotto, QuantitaDisponibile
FROM prodotti
WHERE QuantitaDisponibile < 10;

# 5) Media delle quantità vendute per categoria di prodotto:
SELECT categoria_prodotto, AVG(dv.quantita) AS media_quantita
FROM dettagli_vendite dv
JOIN ordini_2022 o ON dv.id_transazione = o.id_ordine
GROUP BY categoria_prodotto;

# 6) Rendimento totale per ogni cliente:
SELECT c.nome, c.cognome, SUM(v.costo_vendita) AS totale_speso
FROM clienti c
JOIN dettagli_vendite dv ON c.id_cliente = dv.id_cliente
JOIN vendite v ON dv.id_transazione = v.id_transazione
GROUP BY c.nome, c.cognome;

# 7) Top 3 prodotti più venduti:
SELECT p.nome_prodotto, SUM(dv.quantita) AS quantita_venduta
FROM prodotti p
JOIN ordini_2022 o ON p.id_prodotto = o.id_prodotto
JOIN dettagli_vendite dv ON o.id_ordine = dv.id_transazione
GROUP BY p.nome_prodotto
ORDER BY quantita_venduta DESC
LIMIT 3;

# 8) Vendite totali per mese:
SELECT MONTH(data_transazione) AS mese, SUM(costo_vendita) AS vendite_mensili
FROM dettagli_vendite dv
JOIN vendite v ON dv.id_transazione = v.id_transazione
GROUP BY mese;

# 9) Guadagno totale del 2022 per ciascun cliente:
SELECT c.nome, c.cognome, SUM(v.costo_vendita) AS guadagno_totale_2022
FROM clienti c
JOIN dettagli_vendite dv ON c.id_cliente = dv.id_cliente
JOIN vendite v ON dv.id_transazione = v.id_transazione
JOIN ordini_2022 o ON v.id_transazione = o.id_ordine
WHERE YEAR(o.data_vendita) = 2022
GROUP BY c.nome, c.cognome;

# 10) Prodotti acquistati da un cliente specifico:
SELECT c.nome, c.cognome, p.nome_prodotto, dv.quantita
FROM clienti c
JOIN dettagli_vendite dv ON c.id_cliente = dv.id_cliente
JOIN ordini_2022 o ON dv.id_transazione = o.id_ordine
JOIN prodotti p ON o.id_prodotto = p.id_prodotto
WHERE c.nome = 'Mario' AND c.cognome = 'Rossi';

*/