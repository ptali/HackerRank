SELECT SUM(ct.population)
FROM (City ct
  JOIN Country co ON co.code=ct.countrycode
                     AND co.continent="Asia");