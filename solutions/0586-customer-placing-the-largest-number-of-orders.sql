-- 586. Customer Placing the Largest Number of Orders
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1
;