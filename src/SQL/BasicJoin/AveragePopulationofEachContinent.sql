SELECT c.Continent, FLOOR(AVG(ct.Population))
FROM Country c
  JOIN City ct
    ON ct.countrycode=c.code
GROUP BY c.continent;