/* QUERIES - COUNT() */
USE user_db;

/* ----- Links / Verweise ----- */
/*
https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

/* Welche VERSCHIEDENEN Sektoren gibt es? */
/*
SELECT DISTINCT sector #Zeigt jeden Eintrag nur 1mal (Erstes Auftreten des Eintrags)
FROM ccc_list
ORDER BY sector ASC
LIMIT 20;
*/

/* Wie viele VERSCHIEDENEN Sektoren gibt es? */
/*
SELECT 
COUNT(DISTINCT sector) AS "Anzahl Sektoren"    #zählt wie viele verschiedene Sektoren es gibt
FROM ccc_list;
*/

/* Wie viele VERSCHIEDENEN Branchen gibt es? */
/*
SELECT 
# DISTINCT industry AS "Branchen"
COUNT(DISTINCT industry) AS "Branchen"    #zählt wie viele verschiedene Branchen es gibt
FROM ccc_list;
*/

/* Wie viele verschiedene Branchen gibt es in den jeweiligen Industiesektoren?*/
SELECT 
    sector AS "Industiesektoren",                        #NICHT aggregiert --> organisch (bereits in der der Tabelle vorhanden)
    COUNT(DISTINCT industry) AS "Branchen"               #Aggregiert --> durch Funktion entstanden
FROM ccc_list
GROUP BY sector                                          #Bei Kombination von Aggregierten und nicht Aggregierten Tabellen notwendig
ORDER BY Branchen DESC;               








