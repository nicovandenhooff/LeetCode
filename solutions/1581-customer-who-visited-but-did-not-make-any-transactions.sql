-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM visits v
LEFT JOIN transactions t ON t.visit_id = v.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id
;