// 01
SELECT name AS countries FROM world
 WHERE population > (
  SELECT population FROM world
   WHERE name='Russia'
  );

// 02
SELECT name as countries FROM world
WHERE gdp / population > (
 SELECT gdp / population FROM world
 WHERE name = "United Kingdom"
)
AND continent = "Europe"

// 03
SELECT name, continent FROM world
WHERE continent IN (
 SELECT continent FROM world
 WHERE name IN ('Argentina', 'Australia')
)

// 04
SELECT name, population FROM world
WHERE population > (
 SELECT population FROM world WHERE name = 'United Kingdom'
) AND population < (
 SELECT population FROM world WHERE name = 'Germany'
)

// 04.2
SELECT name, population FROM world
WHERE population BETWEEN (
 SELECT population FROM world WHERE name = 'United Kingdom'
) AND (
 SELECT population FROM world WHERE name = 'Germany'
)

// 05
