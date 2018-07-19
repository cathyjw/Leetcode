#Reference https://stackoverflow.com/questions/17975229/using-sql-count-in-a-case-statement
SELECT t.Request_at AS Day, ROUND(COUNT(CASE WHEN t.status!='completed' THEN t.status ELSE NULL END)/COUNT(*),2) AS "Cancellation Rate"
FROM Trips t, Users u
WHERE t.Request_at>='2013-10-01' AND t.Request_at<='2013-10-03' AND t.Client_Id=u.Users_Id AND u.Banned='No'
GROUP BY t.Request_at;