SET @D=0, @P=0, @S=0, @A=0;
SELECT max(Doctor), max(Professor), max(Singer), max(Actor)
FROM (
      SELECT CASE WHEN occupation="Doctor" THEN (@D:=@D+1)
             WHEN occupation="Professor" THEN (@P:=@P+1)
             WHEN occupation="Singer" THEN (@S:=@S+1)
             WHEN occupation="Actor" THEN (@A:=@A+1) END AS Row,
             CASE WHEN occupation = "Doctor" THEN name end as Doctor,
             CASE WHEN occupation = "Professor" THEN name END AS Professor,
             CASE WHEN occupation = "Singer" THEN name END AS Singer,
             CASE WHEN occupation = "Actor" THEN name END AS Actor
      FROM occupations
      ORDER BY Name
    ) AS pivot
GROUP BY Row;