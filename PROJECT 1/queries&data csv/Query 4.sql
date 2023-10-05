SELECT u.email, u.password, u.name, u.date_of_birth, c.kind
FROM celebrity c
LEFT JOIN user u ON c.email = u.email
LEFT JOIN follow f ON c.email = f.followee
WHERE c.kind = 'movie star' AND f.follower IS NULL
