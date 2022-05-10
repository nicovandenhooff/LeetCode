-- 1484. Group Sold Products By The Date
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/group-sold-products-by-the-date/

SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product ASC) as products
FROM activities
GROUP BY sell_date
ORDER BY sell_date
;