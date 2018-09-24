/* https://www.codewars.com/kata/easy-sql-lowercase/train/sql */

SELECT id, name, birthday, LOWER(race) AS race FROM demographics
