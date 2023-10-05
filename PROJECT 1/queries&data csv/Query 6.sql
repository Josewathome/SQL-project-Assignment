SELECT DISTINCT u1.name AS A, u2.name AS B
FROM user u1, user u2, blurt_analysis ba1, blurt_analysis ba2
WHERE u1.email = ba1.email AND u2.email = ba2.email AND ba1.topicid = ba2.topicid AND u1.email != u2.email AND NOT EXISTS 
(SELECT * FROM follow f WHERE f.follower = u1.email AND f.followee = u2.email)
ORDER BY u1.name, u2.name;
