SELECT vendor_ambassador.email, COUNT(follow.follower) AS total_followers
FROM vendor_ambassador
LEFT JOIN follow ON vendor_ambassador.email = follow.followee
GROUP BY vendor_ambassador.email
HAVING total_followers >= 30 AND total_followers <= 80
ORDER BY total_followers DESC;
