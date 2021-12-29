-- 197. Rising Temperature
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/rising-temperature/

SELECT w1.id as "Id"
FROM weather w1
JOIN weather w2
ON w1.recordDate = ADDDATE(w2.recordDate, 1)
WHERE w1.temperature - w2.temperature > 0
;