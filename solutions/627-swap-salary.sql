-- 627. Swap Salary
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/swap-salary/

UPDATE Salary
SET sex = IF(sex = "m", "f", "m")
;