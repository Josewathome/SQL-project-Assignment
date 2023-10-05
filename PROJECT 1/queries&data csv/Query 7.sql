SELECT u.name AS celebrity_name, COUNT(*) AS blurt_count
FROM user u
JOIN celebrity c ON u.email = c.email
JOIN blurt b ON u.email = b.email
GROUP BY u.email
ORDER BY blurt_count DESC;
