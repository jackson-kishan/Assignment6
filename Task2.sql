SELECT 
    p.name ,
    o.quantity ,
    o.quantity * p.price AS total_amount
FROM orders AS o
INNER JOIN products AS p
 ON o.product_id = p.product_id
ORDER BY o.order_id ASC;