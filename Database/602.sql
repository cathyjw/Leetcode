SELECT id, num
FROM (SELECT id_table.id AS id, COUNT(*) AS num
        FROM (SELECT requester_id AS id
              FROM request_accepted
              UNION ALL
              SELECT accepter_id
              FROM request_accepted) AS id_table
        GROUP BY id_table.id) AS final_num
ORDER BY num DESC
LIMIT 0,1;
