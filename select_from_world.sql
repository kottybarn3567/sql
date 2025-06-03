SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population > 200000000;

SELECT name, (gdp / population) as percapitaGDP FROM world
WHERE population > 200000000;

SELECT name, (population/1000000) as millions FROM world
WHERE continent = 'South America';

SELECT name, population FROM world
WHERE name IN('France', 'Germany', 'Italy');

SELECT name FROM world
WHERE name LIKE '%United%';

SELECT name, population, area FROM world
WHERE area > 3000000 or population > 250000000;

SELECT name, population, area FROM world
WHERE area > 3000000 AND population < 250000000
OR area < 3000000 AND population > 250000000;

SELECT name, ROUND(population/100000000, 1) FROM world
WHERE continent = 'South America'
