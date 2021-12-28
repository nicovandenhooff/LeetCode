-- Problem 184. Department Highest Salary
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/department-highest-salary/

SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM employee e
JOIN (
    SELECT d.id, d.name, MAX(e.salary) AS highest_salary
    FROM department d
    JOIN employee e
    ON d.id = e.departmentId
    GROUP BY d.name
) AS d
ON d.id = e.departmentId
WHERE e.salary >= d.highest_salary
;