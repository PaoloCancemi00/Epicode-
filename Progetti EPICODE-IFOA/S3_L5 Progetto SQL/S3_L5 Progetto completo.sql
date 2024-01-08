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

/*
# 3) QUERY SEMPLICI

# Seleziona tutte le vendite avvenute in una specifica data:
SELECT *
FROM vendite v
JOIN dettagli_vendite dv ON v.id_transazione = dv.id_transazione
WHERE dv.data_transazione = '2023-02-09';

# Elenco delle vendite con sconti maggiori del 50%:
SELECT *
FROM vendite
WHERE sconto > 50.0;
*/

/*
# 4) AGGREGAZIONE DI DATI

# Calcola il totale delle vendite per categoria:
SELECT categoria_prodotto, SUM(costo_vendita) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;

# Trova il numero totale di prodotti venduti per ogni categoria:
SELECT categoria_prodotto, SUM(quantita) AS totale_prodotti_venduti
FROM dettagli_vendite dv
JOIN vendite v ON dv.id_transazione = v.id_transazione
GROUP BY categoria_prodotto;
*/

/*
# 5) FUNZIONI DI DATA:

# Seleziona le vendite dell'ultimo trimestre:
SELECT *
FROM vendite v
JOIN dettagli_vendite dv ON v.id_transazione = dv.id_transazione
WHERE dv.data_transazione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);

# Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese:
SELECT
    YEAR(dv.data_transazione) AS anno,
    MONTH(dv.data_transazione) AS mese,
    SUM(v.costo_vendita) AS totale_vendite
FROM vendite v
JOIN dettagli_vendite dv ON v.id_transazione = dv.id_transazione
WHERE dv.data_transazione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY YEAR(dv.data_transazione), MONTH(dv.data_transazione)
ORDER BY anno, mese;
*/

# 6) NON E'PRESENTE LA DOMANDA 

/*
# 7) ANALISI DEGLI SCONTI:

# Trova la categoria con lo sconto medio più alto
SELECT categoria_prodotto, AVG(sconto) AS sconto_medio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY sconto_medio DESC
LIMIT 1;
*/

/*
# 8) VARIAZIONE DELLE VENDITE 

# Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite. Calcola l’incremento o decremento mese per mese
WITH VenditeMensili AS (
    SELECT
        YEAR(dv.data_transazione) AS anno,
        MONTH(dv.data_transazione) AS mese,
        SUM(v.costo_vendita) AS totale_vendite
    FROM vendite v
    JOIN dettagli_vendite dv ON v.id_transazione = dv.id_transazione
    GROUP BY YEAR(dv.data_transazione), MONTH(dv.data_transazione)
)

SELECT
    vm1.anno,
    vm1.mese,
    vm1.totale_vendite AS vendite_mese_corrente,
    COALESCE(vm2.totale_vendite, 0) AS vendite_mese_precedente,
    CASE
        WHEN vm1.totale_vendite > COALESCE(vm2.totale_vendite, 0) THEN 'Incremento'
        WHEN vm1.totale_vendite < COALESCE(vm2.totale_vendite, 0) THEN 'Decremento'
        ELSE 'Stabile'
    END AS tendenza
FROM VenditeMensili vm1
LEFT JOIN VenditeMensili vm2 ON 
    (vm1.anno = vm2.anno AND vm1.mese = vm2.mese + 1)
    OR
    (vm1.anno = vm2.anno + 1 AND vm1.mese = vm2.mese - 11)
ORDER BY vm1.anno, vm1.mese;
*/

/*
# 9) ANALISI STAGIONALE:

# Confronta le vendite totali in diverse stagioni
SELECT
    CASE
        WHEN MONTH(data_transazione) BETWEEN 1 AND 3 THEN 'Inverno'
        WHEN MONTH(data_transazione) BETWEEN 4 AND 6 THEN 'Primavera'
        WHEN MONTH(data_transazione) BETWEEN 7 AND 9 THEN 'Estate'
        WHEN MONTH(data_transazione) BETWEEN 10 AND 12 THEN 'Autunno'
    END AS stagione,
    SUM(costo_vendita) AS vendite_totali
FROM vendite v
JOIN dettagli_vendite dv ON v.id_transazione = dv.id_transazione
GROUP BY stagione;
*/

/*
# 10) CLIENTI FEDELI: 

# scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. 
SELECT
    id_cliente,
    COUNT(*) AS numero_acquisti
FROM dettagli_vendite
GROUP BY id_cliente
ORDER BY numero_acquisti DESC
LIMIT 5;
*/






