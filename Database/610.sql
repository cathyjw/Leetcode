SELECT x, y, z, (CASE 
                    WHEN x+y>z AND ABS(x-y)<z AND (x+z)>y AND (x-z)<y AND (y+z)>x AND ABS(y-z)<x THEN 'Yes'
                    ELSE 'No'
                END) AS triangle
FROM triangle;