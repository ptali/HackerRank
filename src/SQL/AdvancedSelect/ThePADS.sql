SELECT CONCAT(name,"(",LEFT(Occupation,1),")") FROM Occupations
ORDER BY name;

SELECT "There are a total of", COUNT(occupation), concat(LOWER(occupation),"s.")
FROM Occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;