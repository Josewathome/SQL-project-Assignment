SELECT vendor.id, vendor.name, vendor_ambassador.email, COUNT(follow.follower) AS total_followers
FROM vendor
INNER JOIN vendor_ambassador ON vendor.id = vendor_ambassador.vendorid
LEFT JOIN follow ON vendor_ambassador.email = follow.followee
GROUP BY vendor.id, vendor_ambassador.email
ORDER BY vendor.id;
