/* ----- Datenbank erzeugen ----- */
DROP DATABASE IF EXISTS user_db;
CREATE DATABASE IF NOT EXISTS user_db;
USE user_db;

/* ----- Tabelle Users ----- */
DROP TABLE IF EXISTS user_table;
CREATE TABLE IF NOT EXISTS user_table
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

/* Struktur der Tabelle anzeigen */
DESCRIBE user_table;

/* ----- DATEN ----- */
INSERT INTO user_table (user_name, first_name, family_name) VALUES ("Max","Max","Mütze");
INSERT INTO user_table (user_name, first_name, family_name) VALUES ("Maxine","Maxine","Mütze");

# gleicher user_name wird zugelassen!
INSERT INTO user_table (user_name, first_name, family_name) VALUES ("Max","Max","Mützerich");

/* ----- Gesamte Tabelle ausgeben ----- */
SELECT * FROM user_table;





