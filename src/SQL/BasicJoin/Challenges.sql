SELECT h.hacker_id, h.name, COUNT(ch.hacker_id) as challenges_created
FROM hackers h
  JOIN challenges ch ON h.hacker_id=ch.hacker_id
GROUP BY ch.hacker_id, h.name
HAVING challenges_created =
       (
         SELECT COUNT(hacker_id) as created FROM challenges GROUP BY hacker_id
         ORDER BY created DESC LIMIT 1
       )
       OR challenges_created IN
          (
            SELECT created from
              (
                SELECT COUNT(hacker_id) as created FROM challenges
                group by hacker_id
              ) d
            GROUP BY d.created
            having count(created)=1
          )
ORDER BY challenges_created DESC, h.hacker_id;