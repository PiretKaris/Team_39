--1. Filtering all pet names that are 10 characters long.
SELECT 
  name 
FROM 
  Pets 
WHERE 
  LENGTH(name) = 10;

--2. Filtering in "Pets" data dogs whose age is above 3 and whose name ends with "er"
SELECT 
  * 
FROM 
  Pets 
WHERE 
  Age > 3 AND NAME LIKE '%er';

--3. Filtering in all Pets Dogs with short names
SELECT 
  * 
FROM 
  Pets 
WHERE 
  LENGTH(Name) 
BETWEEN 2 AND 3 AND Kind = 'Dog';

--4. Filtering all female birds who are less than 3 years old
SELECT 
  * 
FROM 
  Pets 
WHERE Kind = 'Bird' AND Sex = 'female' AND Age <= 3;

--5. Filtering all Pets with name "Simba"
SELECT 
  * 
FROM 
  Pets 
WHERE Name IN ('Simba');

