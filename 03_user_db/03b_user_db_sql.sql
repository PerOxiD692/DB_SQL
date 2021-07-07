/* ----- Datenbank erzeugen ----- */
DROP DATABASE IF EXISTS user_db;
CREATE DATABASE IF NOT EXISTS user_db;
USE user_db;

/* ----- Tabelle Users ----- */
DROP TABLE IF EXISTS user_table;
CREATE TABLE IF NOT EXISTS user_table
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) UNIQUE NOT NULL,
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

/* ----- Struktur der Tabelle anzeigen ----- */
DESCRIBE user_table;

/* ----- DATEN ----- */
# Nachteil: Passwort wird durch sha1 verschlüssellt!
INSERT INTO user_table (user_name, user_pwd, first_name, family_name) VALUES ("Max", sha1("1234"), "Max", "Mütze");
INSERT INTO user_table (user_name, user_pwd, first_name, family_name) VALUES ("Maxine", sha1("#D7x0"), "Maxine", "Mütze");
INSERT INTO user_table (user_name, user_pwd, first_name, family_name) VALUES ("Max2", sha1("user1234"), "Max","Mützerich");

/* ----- Gesamte Tabelle ausgeben ----- */
SELECT * FROM user_table;

/* ----- Änderungen an bestehender Tabelle ------ */
ALTER TABLE user_table ADD user_plz INT(5) NOT NULL DEFAULT 12345;
DESCRIBE user_table;

UPDATE user_table SET user_plz = 10000 WHERE id = 1;
UPDATE user_table SET user_plz = 20000 WHERE id = 2;
UPDATE user_table SET user_plz = 30000 WHERE id = 3;

/* ----- Gesamte Tabelle ausgeben ----- */
SELECT * FROM user_table;



