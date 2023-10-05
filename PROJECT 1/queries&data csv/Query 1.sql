SELECT t.id AS topicid, COUNT(*) AS total_blurts
FROM topic t
JOIN blurt_analysis ba ON t.id = ba.topicid
GROUP BY t.id
ORDER BY t.id ASC;
