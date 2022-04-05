-- Problem 181. Employees Earning More Than Their Managers
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT e1.name AS Employee
FROM employee e1
JOIN employee e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary
;