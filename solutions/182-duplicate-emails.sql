-- Problem 182. Duplicate Emails
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/duplicate-emails/

SELECT email
FROM person
GROUP BY email
HAVING COUNT(*) > 1
;