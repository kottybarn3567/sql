--- 01
SELECT name, continent, population FROM world;

--- 02
SELECT name FROM world
WHERE population > 200000000;

--- 03
SELECT name, (gdp / population) as percapitaGDP FROM world
WHERE population > 200000000;

--- 04
SELECT name, (population/1000000) as millions FROM world
WHERE continent = 'South America';

--- 05
SELECT name, population FROM world
WHERE name IN('France', 'Germany', 'Italy');

--- 06
SELECT name FROM world
WHERE name LIKE '%United%';

--- 07
SELECT name, population, area FROM world
WHERE area > 3000000 or population > 250000000;

--- 08
SELECT name, population, area FROM world
WHERE area > 3000000 AND population < 250000000
OR area < 3000000 AND population > 250000000;

--- 09
SELECT name, 
  ROUND(population / 1000000, 2) AS population, 
  ROUND(gdp / 1000000000, 2) AS gdp 
FROM world
WHERE continent = 'South America';

--- 10
SELECT name, round(gdp / population, -3) AS gdp_capita_trillionsFROM world
WHERE gdp >= 1000000000000;

--- 11
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital)

--- 12
SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
AND name <> capital;

--- 13
SELECT name FROM world
WHERE name NOT LIKE '% %'
AND name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%';
