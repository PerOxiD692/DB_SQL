/* ----- Datenbank erzeugen ----- */
DROP DATABASE IF EXISTS user_db; #Lösche Datenbank "user_db" falls vorhanden
CREATE DATABASE IF NOT EXISTS user_db; #Erzeuge Datenbank "user_db" falls nicht vorhanden
USE user_db; #Nutze die Datenbank "user_db"

/* ----- Tabelle Cats ----- */
DROP TABLE IF EXISTS cats; #Lösche Tabelle "cats" falls vorhanden
CREATE TABLE IF NOT EXISTS cats #Erzeuge Tabelle "cats" falls nicht vorhanden
(
    id INT NOT NULL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

/* ----- Struktur der Tabelle anzeigen ----- */
DESCRIBE cats; #Zeigt die Struktur der Tabelle "cats"

/* CSV-Daten parsen */
LOAD DATA LOCAL INFILE "04_SQL_data_import/cats_export.csv" INTO TABLE cats #Lade Daten in Tabelle Cats
FIELDS TERMINATED BY ";" LINES TERMINATED BY "\n" #Felder werden getrennt durch ";" | Zeilen werden gertrennt durch den Umbruch "\n"
IGNORE 1 ROWS; #Die erste Zeile wird ignoriert


/* ----- Gesamte Tabelle ausgeben ----- */
SELECT * FROM cats; #gibt Tabelle "cats" aus