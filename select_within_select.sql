--- 01
SELECT name AS countries FROM world
 WHERE population > (
  SELECT population FROM world
   WHERE name='Russia'
  );

--- 02
SELECT name as countries FROM world
WHERE gdp / population > (
 SELECT gdp / population FROM world
 WHERE name = "United Kingdom"
)
AND continent = "Europe"

--- 03
SELECT name, continent FROM world
WHERE continent IN (
 SELECT continent FROM world
 WHERE name IN ('Argentina', 'Australia')
)

--- 04
SELECT name, population FROM world
WHERE population > (
 SELECT population FROM world WHERE name = 'United Kingdom'
) AND population < (
 SELECT population FROM world WHERE name = 'Germany'
)

--- 04.2
SELECT name, population FROM world
WHERE population BETWEEN (
 SELECT population FROM world WHERE name = 'United Kingdom'
) AND (
 SELECT population FROM world WHERE name = 'Germany'
)

--- 05
SELECT name, CONCAT(ROUND((population / (
 SELECT population FROM world WHERE name = 'Germany')) * 100), '%')
 AS percentage FROM world
 WHERE continent = 'Europe';

--- 06
SELECT name FROM world
WHERE gdp > ALL (
 SELECT gdp FROM world
 WHERE continent = 'Europe'
);

--- 07
SELECT continent, name, area FROM world
WHERE area >= ALL (
  SELECT area FROM world as sub_world
  WHERE sub_world.continent = world.continent
);

--- 08
SELECT continent, name FROM world
WHERE name IN (
  SELECT MIN(name) FROM world
  GROUP BY continent
);

--- 09
SELECT name, continent, population FROM world
WHERE continent IN (
  SELECT continent FROM world
  GROUP BY continent
  HAVING MAX(population) <= 25000000
);

--- 10
SELECT name, continent FROM world w1
WHERE NOT EXISTS (
  SELECT 1 FROM world w2
  WHERE w2.continent = w1.continent
    AND w2.name != w1.name
    AND w1.population <= 3 * w2.population
);
