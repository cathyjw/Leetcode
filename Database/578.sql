SELECT question_id AS survey_log
FROM survey_log
WHERE answer_id IS NOT NULL
GROUP BY question_id
ORDER BY COUNT(*) DESC
LIMIT 0,1;