SELECT CASE WHEN (a+b)<=c OR (a+c)<=b THEN 'Not A Triangle'
            WHEN a=b AND a=c THEN 'Equilateral'
            WHEN a=b OR a=c OR a=c THEN 'Isosceles'
            ELSE 'Scalene'
       END FROM triangles;