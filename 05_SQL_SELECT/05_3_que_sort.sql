/* ----- QUERIES Sort----- */
USE user_db;

/* Sortieren nach Sektor / Aufsteigend (alphabetisch) */
/*
SELECT ticker AS "SYM", c_name AS "Unternehmen",
CONCAT(sector, " | ", industry) AS "Operations"     #Zusammenführen der Werte sector und industry als Spalte "Operations"
FROM ccc_list 
# ORDER BY ticker ASC     #Aufsteigend sortieren 
# ORDER BY ticker DESC    #Absteigend sortieren
ORDER BY sector ASC, industry DESC    #Nach mehreren Kriterien unterschiedlich sortiert
LIMIT 20;
*/


/* ----- Sortieren nach Aktienpreis aufsteigend / absteigend (numerisch) */
SELECT 
    ticker AS "SYMBOL",
    c_name AS "Unternhemen",
    CONCAT(sector, " | ", industry) AS "Operations",
    price AS "Kurs in $",
    payouts AS "Zahlungen p.a.",
    no_yrs AS "Jahre ++" #Jahre mit Fortlaufender Erhöhung der Dividenden Auszahlungen
FROM ccc_list
# ORDER BY price ASC    #beginnend mit der günstigster Aktie
#ORDER BY price DESC   #beginnend mit der teuersten Aktie
ORDER BY no_yrs DESC, sector ASC
LIMIT 20;

    
    
    