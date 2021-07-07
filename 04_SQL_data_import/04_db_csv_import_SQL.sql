/* ----- Datenbank erzeugen ----- */
DROP DATABASE IF EXISTS user_db;
CREATE DATABASE IF NOT EXISTS user_db;
USE user_db;

/* ----- Tabelle Cats ----- */
DROP TABLE IF EXISTS cats;
CREATE TABLE IF NOT EXISTS cats
(
    id INT NOT NULL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

/* ----- Struktur der Tabelle anzeigen ----- */
DESCRIBE cats;