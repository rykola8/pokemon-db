--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu
-- Izveidot 10 pokemonu ierakstus
-- Atlasīt visus pokemonus un visas kolonnas

-- Atlasīt visu pokemonu nosaukums un tos kuriem ir 'Fire' tips

-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500
-- Atlasīt pokemonus ar 'Flying' tipu un statistikam virs 500
-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)

-- Sakārtot pokemonus pēc augstāka HP

-- Izdzēst tos, kam attack mazāks par 50

CREATE TABLE pokemons (
    number integer,
    name text,
    type_1 text,
    type_2 text,
    total integer,
    hp integer,
    attack integer, 
    defense integer 
);

INSERT INTO pokemons(number, name, type_1, type_2, total, hp, attack, defense)
VALUES (1, 'Bulbasaur', 'Grass', 'Poison', 318, 45, 49, 49), 
(2, 'Ivysaur', 'Grass', 'Poison', 405, 60, 62, 63),
(3, 'Venusaur', 'Grass', 'Poison', 525, 80, 82, 83),
(4, 'VenusaurMega Venusaur', 'Grass', 'Poison', 525, 80, 82, 83),
(5, 'Charizard', 'Fire', 'Flying', 534, 78, 84, 78),
(6, 'CharizardMega Charizard X',  'Fire', 'Dragon',  634, 78, 130, 111),
(7, 'CharizardMega Charizard Y', 'Fire', 'Dragon', 634, 78, 104, 78 ),
(8, 'Squirtle', 'Water', '', 314, 44, 48, 65),
(9, 'Wartortle', 'Water', '', 405, 59, 63, 80),
(10, 'Blastoise', 'Water', '', 405,  59, 63, 80);

-- Atlasīt visus pokemonus un visas kolonnas
SELECT * FROM pokemons;

-- Atlasīt visu pokemonu nosaukums un tos kuriem ir 'Fire' tips
SELECT name 
FROM pokemons
WHERE type_1 = 'Fire' OR type_2 = 'Fire'

-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500
SELECT * FROM pokemons WHERE total > 500;

-- Atlasīt pokemonus ar 'Flying' tipu un statistikam virs 500
SELECT * FROM pokemons WHERE total > 500 and type_1 = 'Flying' OR type_2 = 'Flying';

-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)
SELECT type_1 FROM pokemons;

-- Sakārtot pokemonus pēc augstāka HP
SELECT * FROM pokemons ORDER BY hp DESC;

-- Izdzēst tos, kam attack mazāks par 50
