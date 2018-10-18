SELECT N, CASE
            WHEN P IS NUll THEN "Root"
            WHEN N IN (SELECT p FROM BST) THEN 'Inner'
            ELSE "Leaf"
          END FROM BST
ORDER BY N;