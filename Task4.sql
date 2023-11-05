 SELECT
       c.customer_name,
       SUM(o.total_amount) AS total_purchase_amount
 FROM customers AS c  
 INNER JOIN orders AS o 
   ON c.customer_id = o.customer_id
 GROUP BY c.customer_id
 ORDER BY total_purchase_amount
 LIMIT 5;          