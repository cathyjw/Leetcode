SELECT w2.Id
FROM Weather w2
WHERE w2.Temperature>(SELECT w1.Temperature
                     FROM Weather w1
                     WHERE DATEDIFF(w2.RecordDate, w1.RecordDate)=1);