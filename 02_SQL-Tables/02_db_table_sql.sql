/* ----- Strukturen ----- */

/* ----- Datenbanken auf Server anzeigen ----- */
SHOW DATABASES;


/* ----- Datenbank test_db löschen, falls vorhanden ----- */
DROP DATABASE IF EXISTS test_db;


/* ----- Datenbanken anlegen, falls noch nicht vorhanden ----- */
CREATE DATABASE IF NOT EXISTS test_db;


/* ----- Datenbank auswählen ----- */
USE test_db;


/* ----- Tabelle anlegen, falls nicht vorhanden ----- */
CREATE TABLE IF NOT EXISTS test_table
(
    name VARCHAR(20),
    age INT 
);


/* ----- Tabelle anzeigen ----- */
SHOW TABLES;


/* ----- Struktur der Tabelle anzeigen ------ */
DESC test_table;


/* ----- Daten einfügen ----- */
INSERT INTO test_table(name,age) VALUES ("Grizabella",29);
INSERT INTO test_table(name,age) VALUES ("Alonzo",35);
INSERT INTO test_table() VALUES();


/* ----- Tabelleninhalt anzeigen ----- */
SELECT * FROM test_table;


/* ----- Tabelle löschen, falls vorhanden ----- */
DROP TABLE IF EXISTS test_table;


SHOW TABLES;




