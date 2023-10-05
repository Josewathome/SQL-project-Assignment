SELECT vendor.name, advertisement.content
FROM vendor
INNER JOIN advertisement ON vendor.id = advertisement.vendorid
ORDER BY vendor.id;
