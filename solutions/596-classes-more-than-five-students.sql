-- 596. Classes More Than 5 Students
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/classes-more-than-5-students/

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5
;