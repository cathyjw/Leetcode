SELECT MAX(e1.Salary) AS SecondHighestSalary
FROM Employee e1
WHERE 1<=(SELECT COUNT(DISTINCT e2.Salary)
        FROM Employee e2
        WHERE e1.Salary<e2.Salary);