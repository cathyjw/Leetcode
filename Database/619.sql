SELECT MAX(temp_num) AS num
FROM (SELECT num AS temp_num
FROM number
GROUP BY num
HAVING COUNT(*)=1) AS temp_num;