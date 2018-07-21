SELECT t1.id, (CASE
            WHEN t1.p_id IS NULL THEN 'Root'
            WHEN t1.p_id IS NOT NULL AND t1.id IN (SELECT t2.p_id 
                                                   FROM tree t2) THEN 'Inner'
            ELSE 'Leaf'
            END) AS Type
FROM Tree t1;