SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w
  INNER JOIN Wands_Property wp ON w.code=wp.code
WHERE wp.is_evil=0 AND w.coins_needed=(
  SELECT MIN(w1.coins_needed)
  FROM wands w1
    INNER JOIN wands_property ON wands_property.code=w1.code
  WHERE wands_property.age=wp.age AND w1.power=w.power)
ORDER BY w.power DESC, wp.age DESC;