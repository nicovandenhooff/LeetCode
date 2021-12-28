-- 183. Customers Who Never Order
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/customers-who-never-order/

SELECT c.name as Customers
FROM orders o
RIGHT OUTER JOIN customers c
ON c.id = o.customerId
WHERE o.id is NULL
;