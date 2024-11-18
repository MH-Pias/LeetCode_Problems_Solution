# Write your MySQL query statement below

SELECT 
      ROUND(100*SUM(order_date =customer_pref_delivery_date)/COUNT(DISTINCT(customer_id )),2) as immediate_percentage 

FROM Delivery

WHERE (customer_id , order_date ) IN (SELECT customer_id, MIN(order_date) FROM Delivery GROUP BY  customer_id )
