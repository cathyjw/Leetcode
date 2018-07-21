SELECT DISTINCT f1.follower, (SELECT COUNT(DISTINCT f2.follower)
                  FROM follow f2
                  WHERE f2.followee=f1.follower) AS num
FROM follow f1
WHERE (SELECT COUNT(*)
       FROM follow f2
       WHERE f2.followee=f1.follower)!=0
ORDER BY f1.follower;