/* ----- QUERIES Basic ----- */
USE user_db;

# SELECT * FROM ccc_list #Zeige die gesamte Liste
# LIMIT 5; #Begrenzung: 5 Zeilen ab Zeile 0
# LIMIT 200,10; # Begrenzung 10 Zeilen ab Zeile 201
# SELECT ticker, c_name, industry FROM ccc_list LIMIT 5; #Zeige 5 Zeilen der Tabelle und nur die Spalten ticker, c_name und industry

SELECT ticker AS "SYM", c_name AS "Unternehmen", price AS "Kurs in $" #Wähle Spalten ticker, c_name und price und nenne diese "Sym", "Unternhmen" und "Kurs in $"
FROM ccc_list #Aus der ccc_list Tabelle
LIMIT 10; # Zeige die ersten 10 Einträge

/* ----- Kombinationen aus mehreren Feldern in ein neues Feld mit der Verknüpfung CONCAT() ----- */
SELECT ticker AS "SYM", c_name AS "Unternehmen",
CONCAT(sector, " | ", industry) AS "Operations" # Zusammenführen der Werte sector und industry als Spalte "Operations"
FROM ccc_list LIMIT 5;