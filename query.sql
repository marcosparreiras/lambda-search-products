SELECT 
    p.name AS product_name, 
    s.name AS supermarket_name, 
    s.address, 
    ph.price, 
    ph.date,
    (6371 * acos( 
        cos(radians(-19.94414)) * cos(radians(s.latitude)) * 
        cos(radians(s.longitude) - radians(-43.93272)) + 
        sin(radians(-19.94414)) * sin(radians(s.latitude))
    )) AS distance
FROM 
    supermarkets AS s
INNER JOIN 
    price_history AS ph ON s.cnpj = ph.supermarket_id
INNER JOIN 
    products AS p ON ph.product_id = p.code
WHERE 
    p.name ILIKE '%abacate%'
  AND
    (6371 * acos( 
        cos(radians(-19.94414)) * cos(radians(s.latitude)) * 
        cos(radians(s.longitude) - radians(-43.93272)) + 
        sin(radians(-19.94414)) * sin(radians(s.latitude))
    )) < 1000;