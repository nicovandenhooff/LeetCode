-- 607. Sales Person
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/sales-person/

SELECT s.name
FROM salesperson s
WHERE s.sales_id NOT IN (
    SELECT o.sales_id
    FROM orders o
    LEFT JOIN company c ON o.com_id = c.com_id
    WHERE c.name = "Red"
)
;