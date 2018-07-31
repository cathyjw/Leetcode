SELECT DISTINCT s1.name
FROM salesperson s1
WHERE s1.name NOT IN
(SELECT DISTINCT s.name
FROM salesperson s, company c, orders o
WHERE o.com_id=c.com_id AND o.sales_id=s.sales_id AND c.name='RED');