/* ----- QUERIES Filtern mit WHERE----- */
USE user_db;

/* ----- INDEX ----- */
/*
    Eigrenzen/Filtern mit WHERE & AND/OR etc.
    Eigrenzen/Filtern mit WHERE & LIKE + Parameter
    Eigrenzen/Filtern mit WHERE & REgEx
    Eigrenzen/Filtern mit WHERE & IN / NOT IN
    Eigrenzen/Filtern mit WHERE & 
*/

/* ----- Eigrenzen/Filtern mit WHERE & AND/OR etc. ----- */
/*
SELECT 
    ticker AS "SYMBOL",
    c_name AS "Unternhemen",
    CONCAT(sector, " | ", industry) AS "Operations",
    price AS "Kurs in $",
    payouts AS "Zahlungen p.a.",
    dividend AS "Dividende"
FROM ccc_list
# Einzeldaten / Stings
# WHERE sector = "Communication Services"
# WHERE industry = "Media"
# WHERE sector = "Communication Services" AND industry = "Entertainment" # Kombination mit AND
# WHERE industry = "Entertainment" AND payouts = 4
# WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media") # Kombination durch AND / OR
WHERE sector = "Communication Services" AND NOT industry = "Media"
ORDER BY price ASC    #beginnend mit der günstigster Aktie
LIMIT 20;
*/

/* Eingrenzen / Filtern mit WHERE & LIKE + Parameter */
/*
SELECT 
    ticker AS "SYMBOL",
    c_name AS "Unternhemen",
    industry AS "Branche"
FROM ccc_list
# WHERE industry = "Media"       #scharfe Suche nach strings
# WHERE industry LIKE "AIR%"     #unscharfe Suche - Beginnt mit "AIR"
# WHERE industry LIKE "%ment"    #unscharfte Suche - Endet mit "ment"
# WHERE industry LIKE "%ood%"    #unscharfe Suche - Alles was "ood" beinhaltet  
*/

/* Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char */
/*
SELECT 
    ticker AS "SYMBOL",
    c_name AS "Unternhemen",
    industry AS "Branche"
FROM ccc_list
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "Me__a"
#WHERE industry LIKE "M_d_a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"

#WHERE industry LIKE "%ment" 
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" 
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"

ORDER BY industry ASC
LIMIT 40;
*/

/* Eingrenzen/Filtern WHERE & RegEx */
/*
SELECT
	c_name "Unternehmen"
FROM ccc_list
WHERE c_name RLIKE "^[AZ]"
ORDER BY c_name;
*/

/* Eingrenzen/Filtern WHERE & IN / NOT IN */
/*
SELECT 
	ticker "SYM",
	c_name "Unternehmen",
	sector "Sektor",
	industry "Branche"
FROM ccc_list 
#WHERE sector = "Financials"
#WHERE industry IN ("Beverages","Banks") #OR ...
WHERE sector = "Financials" AND industry NOT IN ("Banks","Insurance")
ORDER BY industry DESC;
*/


