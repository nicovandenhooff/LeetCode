-- 180. Consecutive Numbers
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/consecutive-numbers/

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l1.id = l3.id - 2
WHERE  l1.num - l2.num = 0 AND l1.num - l3.num = 0
;