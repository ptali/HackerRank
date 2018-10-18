SELECT ct.name
FROM (City ct
  JOIN Country co ON co.code=ct.countrycode
                     AND co.continent="Africa");