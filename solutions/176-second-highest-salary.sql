-- Problem 176. Second Highest Salary
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/second-highest-salary/

SELECT MAX(salary) as SecondHighestSalary
FROM employee
WHERE salary NOT IN (
    SELECT MAX(salary)
    FROM employee
)
;