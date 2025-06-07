// 01
SELECT yr, subject, winner FROM nobel
WHERE yr = 1950;

// 02
SELECT winner FROM nobel
WHERE yr = 1962 AND subject = 'literature';

// 03
SELECT yr AS year, subject FROM nobel
WHERE winner = 'Albert Einstein';

// 04
SELECT winner as winners FROM nobel
WHERE yr >= 2000 AND subject = 'peace';

// 05
SELECT * FROM nobel
WHERE subject = 'literature'
AND yr BETWEEN 1980 AND 1989;

// 06
SELECT * FROM nobel
 WHERE winner IN
(
   'Theodore Roosevelt',
   'Thomas Woodrow Wilson',
   'Jimmy Carter',
   'Barack Obama'
);

// 07
SELECT winner FROM nobel
WHERE winner LIKE 'John%';

// 08
SELECT * FROM nobel
WHERE (subject, yr)
 IN (
   ('physics', 1980),
   ('chemistry', 1984)
 );

// 08.2
SELECT * FROM nobel
WHERE subject = 'physics' AND yr = 1980
OR subject = 'chemistry' AND yr = 1984;

// 09
SELECT * FROM nobel
WHERE yr = 1980 AND
subject  <> 'chemistry' AND
subject <> 'medicine';

// 09.2
SELECT * FROM nobel
WHERE yr = 1980 AND
subject NOT IN('chemistry', 'medicine');

// 10
SELECT * FROM nobel
WHERE subject = "medicine" AND yr < 1910
OR subject = "literature" AND yr >= 2004;

// 11
SELECT * FROM nobel
WHERE winner = 'Peter Grünberg';

// 12
SELECT * FROM nobel
WHERE winner = 'Eugene O''Neill';

// 13
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner ASC;

// 14
