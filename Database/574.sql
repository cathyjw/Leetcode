SELECT Name 
FROM Candidate
WHERE id=(SELECT CandidateId
         FROM Vote
         GROUP BY CandidateId
         HAVING COUNT(*)=(SELECT MAX(counts)
                         FROM (SELECT COUNT(*) AS counts
                              FROM Vote v1
                              GROUP BY v1.CandidateId) AS num));