/* ----- CRUD - Create | Read | Update |Delete */
# Create siehe 04a ....

# Update --> Änderung in bestehender Tabelle

# Update cats SET cat_name ="Alonzo"; # Achtung! Hier wird die gesamte Spalte überschrieben!
# Update cats SET cat_name ="Alonzo" WHERE id = 2;
# SELECT * FROM cats;

# Update cats SET cat_name ="Big Alonzo" WHERE fur_color = "grey";
# SELECT * FROM cats;

/* ----- READ - SELECT : NEUE Ergebnistabelle ------ */
Select * From cats; #gesamte Tabelle
SELECT cat_name, age FROM cats; # gibt die Spalten cat_name und age aus
SELECT age, cat_name FROM cats; # gibt die Spalten age und cat_name aus

SELECT cat_name AS "Name", age AS "Alter" FROM cats; # gibt die Spalten cat_name als "Name" und age als "Alter" aus

/* ----- Restriktionen durch WHERE ----- */
SELECT 
    cat_name AS "Name", 
    age AS "Alter"
FROM cats
# WHERE id = 1 # Zeige Zeile 1
# WHERE fur_color = "red" # Zeige alle mit fur_color "red"
WHERE age > 35 # Zeige alle mit age > 35
;

/* ----- DELETE - Vorsicht!! ------ */
# DELETE FROM cats; # Lösche alle Daten aus Tabelle "cats"
DELETE FROM cats WHERE id = 2; #sicher --> Key
SELECT * FROM cats; #gesamte Tabelle cats

# DESCRIBE cats;


