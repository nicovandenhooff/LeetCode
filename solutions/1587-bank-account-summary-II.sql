-- 1587. Bank Account Summary II
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/bank-account-summary-ii/

SELECT u.name, SUM(t.amount) AS balance
FROM transactions t
JOIN users u ON t.account = u.account
GROUP BY t.account
HAVING SUM(t.amount) > 10000
;