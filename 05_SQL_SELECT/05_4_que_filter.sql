/* ----- QUERIES Filtern mit WHERE----- */
USE user_db;

/* ----- INDEX ----- */
/*
    Eigrenzen/Filtern mit WHERE & AND/OR etc.
    Eigrenzen/Filtern mit WHERE & LIKE + Parameter
    Eigrenzen/Filtern mit WHERE & REgEx
    Eigrenzen/Filtern mit WHERE & 
    Eigrenzen/Filtern mit WHERE & 
*/


/* ----- Eigrenzen/Filtern mit WHERE & AND/OR etc. ----- */
SELECT 
    ticker AS "SYMBOL",
    c_name AS "Unternhemen",
    CONCAT(sector, " | ", industry) AS "Operations",
    price AS "Kurs in $",
    payouts AS "Zahlungen p.a.",
    dividend AS "Dividende"
FROM ccc_list
# Einzeldaten / Stings
WHERE sector = "Communication Services"
ORDER BY price ASC    #beginnend mit der günstigster Aktie
LIMIT 20;