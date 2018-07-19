SELECT d.Name AS Department, e.Name AS Employee, e.Salary
FROM Employee e, Department d
WHERE e.DepartmentId=d.Id AND e.Salary=(SELECT MAX(e2.Salary)
                                       FROM Employee e2
                                       WHERE e.DepartmentId=e2.DepartmentId);