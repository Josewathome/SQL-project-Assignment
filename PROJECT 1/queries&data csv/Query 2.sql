SELECT user.name, user.address
FROM user 
INNER JOIN celebrity ON user.email = celebrity.email 
WHERE celebrity.kind = 'Tennis Player';


