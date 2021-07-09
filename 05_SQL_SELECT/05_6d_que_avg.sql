/* Aggregationen AVG() */
USE user_db

/*
-- Durchschnittspreis einer Aktie / Banken?
SELECT
	round(avg(price),2) Durchschnittspreis  -- Abgerundet / 2 Nachkommastellen
FROM user_db.ccc_list
#WHEREindustry = "Banks"
WHERE industry = "Media"
;*/

-- KOMBINATION Preis/Dividende pro Industriesektor

SELECT
	sector AS Industriesektor,
    round(avg(price),2) AS Durchschnittspreis,  
	avg(dividend) AS Durchschnittsdividende
FROM user_db.ccc_list
GROUP BY sector
#ORDER BY avg(price) DESC
ORDER BY avg(dividend) DESC
;
