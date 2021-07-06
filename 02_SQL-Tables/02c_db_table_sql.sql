/* ----- Strukturen ----- */

/* ----- Datenbank test_db löschen, falls vorhanden ----- */
DROP DATABASE IF EXISTS test_db;


/* ----- Datenbanken anlegen, falls noch nicht vorhanden ----- */
CREATE DATABASE IF NOT EXISTS test_db;


/* ----- Datenbank auswählen ----- */
USE test_db;

/* ----- Tabelle löschen, falls vorhanden ----- */
DROP TABLE IF EXISTS test_db.test_table;

/* ----- Tabelle anlegen, falls nicht vorhanden ----- */
CREATE TABLE IF NOT EXISTS test_table
(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL DEFAULT "To be announced",
    age INT NOT NULL DEFAULT 0
);


/* ----- Struktur der Tabelle anzeigen ------ */
DESC test_table;


/* ----- Daten einfügen ----- */
INSERT INTO test_table(id, name, age) VALUES (1, "Grizabella", 29);
INSERT INTO test_table(id, name, age) VALUES (2, "Alonzo", 35);
#INSERT INTO test_table() VALUES();

# Doppelte Datensätze werden zugelassen
#INSERT INTO test_table(id, name, age) VALUES (2, "Alonzo", 35);

/* ----- Tabelleninhalt anzeigen ----- */
SELECT * FROM test_table;






