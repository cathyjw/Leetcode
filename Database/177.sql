SELECT MAX(DISTINCT e1.Salary)
      FROM Employee e1
      WHERE N-1 = (SELECT COUNT(DISTINCT e2.Salary)
                  FROM Employee e2
                  WHERE e2.Salary>e1.Salary)
