-- 1084. Sales Analysis III
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/sales-analysis-iii/

SELECT product_id, product_name
FROM product
WHERE product_id NOT IN (
    SELECT product_id
    FROM sales
    WHERE sale_date
    NOT BETWEEN '2019-01-01' AND '2019-03-31'
)
;