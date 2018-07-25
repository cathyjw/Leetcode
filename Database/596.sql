SELECT c.class
FROM (SELECT DISTINCT student, class
     FROM courses) AS c
GROUP BY c.class
HAVING COUNT(*)>=5