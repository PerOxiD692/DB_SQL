/* QUERIES - DISTINCT */
USE user_db;

/* Alle Sektoren */
/*
SELECT sector
FROM ccc_list
ORDER BY sector ASC
LIMIT 20;
*/

/* Nur das erste Auftreten von Sektoren */
/* Welche VERSCHIEDENEN Sektoren gibt es? */
/*
SELECT DISTINCT sector #Zeigt jeden Eintrag nur 1mal (Erstes Auftreten des Eintrags)
FROM ccc_list
ORDER BY sector ASC
LIMIT 20;
*/

/* Nur das erste Auftreten von Branchen */
/* Welche VERSCHIEDENEN Branchen gibt es? */
/*
SELECT DISTINCT industry AS Branchen #Zeigt jeden Eintrag nur 1mal (Erstes Auftreten des Eintrags) als "Branchen"
FROM ccc_list
ORDER BY industry ASC
LIMIT 20;
*/

/* Welche Unterschiedlichen Auszahlungs-Rhythmen gibt es? */
/*
SELECT DISTINCT payouts AS "Auszahlungen p.a." #Zeigt jeden Eintrag nur 1mal (Erstes Auftreten des Eintrags) als "Auszahlungen p.a."
FROM ccc_list
ORDER BY payouts ASC
LIMIT 20;
*/

/* Welche Unternhmen zahlen monatlich? */
SELECT 
    c_name AS "Unternehmen",
    industry AS "Branche",
    payouts AS "Auszahlungen p.a."
FROM ccc_list
WHERE payouts = 12
ORDER BY Branche ASC;




