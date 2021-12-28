-- 185. Department Top Three Salaries
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/department-top-three-salaries/

-- contains salaries with ranks
WITH rankedsalaries AS (
    SELECT 
        DISTINCT d.id,
        d.name,
        e.salary,
        DENSE_RANK() 
            OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS "rank"
    FROM department d
    JOIN employee e
    ON d.id = e.departmentId
)
-- gets all information for "top earners" in each department
SELECT 
    rs.name AS department,
    e.name AS employee,
    e.salary AS salary
FROM employee e
JOIN rankedsalaries rs
ON e.departmentId = rs.id AND e.salary = rs.salary
WHERE rs.rank <= 3
;