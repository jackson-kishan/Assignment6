 SELECT 
       c.category_name,
       SUM(p.price * p.quantity_sold) AS total_revenue
 FROM products AS p   
 INNER JOIN categories AS c
  ON p.category_id = c.category_id
 GROUP BY c.category_name
 ORDER BY total_revenue DESC; 