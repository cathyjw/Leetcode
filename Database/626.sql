SELECT (CASE 
            WHEN id%2<>0 AND id=counts THEN id
            WHEN id%2<>0 AND id<>counts THEN id+1
            WHEN id%2=0 THEN id-1
        END) AS id, student
FROM seat, (SELECT COUNT(*) AS counts FROM seat) AS counts
ORDER BY id;