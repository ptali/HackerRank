SELECT h.hacker_id, h.name, sum(max_score) as total FROM hackers h
  INNER JOIN (SELECT hacker_id, MAX(score) as max_score
              FROM submissions GROUP BY hacker_id, challenge_id) h1
    ON h1.hacker_id=h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total>0
ORDER BY total DESC, h.hacker_id ASC;