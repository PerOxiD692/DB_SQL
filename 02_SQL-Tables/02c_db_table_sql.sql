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
    #PRIMARY KEY -> Keine Mehrfacheinträge möglich
    #AUTO_INCREMENT -> Zählt mit
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "ToBeAnnounced",
    age INT NOT NULL DEFAULT 0
);


/* ----- Struktur der Tabelle anzeigen ------ */
DESC test_table;


/* ----- Daten einfügen ----- */
INSERT INTO test_table(name, age) VALUES ("Grizabella", 29);
INSERT INTO test_table(name, age) VALUES ("Gus", 45);
INSERT INTO test_table(name, age) VALUES ("Alonzo", 35);
INSERT INTO test_table(name, age) VALUES ("Alonzo", 35);
INSERT INTO test_table() VALUES();

# Doppelte Datensätze werden zugelassen
#INSERT INTO test_table(name, age) VALUES ("Alonzo", 35);

/* ----- Tabelleninhalt anzeigen ----- */
SELECT * FROM test_table;






