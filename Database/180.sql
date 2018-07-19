SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.Id+1=l2.Id AND l2.id+1=l3.id AND l1.Num=l2.Num AND l2.Num=l3.Num;