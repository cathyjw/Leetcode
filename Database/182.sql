SELECT DISTINCT p1.Email
FROM Person p1
WHERE EXISTS (SELECT p2.Email
             FROM Person p2
             WHERE p2.Email=p1.Email AND p2.Id!=p1.Id);