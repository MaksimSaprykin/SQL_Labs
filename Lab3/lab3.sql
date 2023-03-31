SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT CONCAT(name, ' (', region, ')')
FROM cities
WHERE population > 100000
ORDER BY name;

SELECT name, population, CONCAT((population/4000000*100),'%') AS expanded_popul
FROM cities
WHERE population > 100000
ORDER BY population DESC;

SELECT name, CONCAT((population/4000000*100),'%') AS expanded_popul
FROM cities
WHERE (population/4000000*100) >= 0.1
ORDER BY (population/4000000*100) DESC;