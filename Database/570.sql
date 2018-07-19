SELECT DISTINCT e1.Name AS Name
FROM Employee e1
WHERE e1.Id IN (SELECT e2.ManagerId
            FROM Employee e2
            GROUP BY e2.ManagerId
            HAVING COUNT(e2.ManagerId)>=5);