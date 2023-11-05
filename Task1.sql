SELECT 
    c.* ,
    COUNT(o.customer_id) AS total_orders,
    SUM(o.total_amount) as amount 
 FROM customers AS c
  LEFT JOIN orders AS o
  ON c.customer_id = o.customer_id
 GROUP BY c.customer_id , c.customer_name 
 ORDER BY total_orders DESC;
