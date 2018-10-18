SELECT s.hacker_id, h.name
FROM Submissions s
  JOIN challenges ch ON s.challenge_id=ch.challenge_id
  JOIN Hackers h ON s.hacker_id=h.hacker_id
  JOIN difficulty d ON ch.difficulty_level=d.difficulty_level
WHERE s.score=d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC