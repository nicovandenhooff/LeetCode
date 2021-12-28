-- 196. Delete Duplicate Emails
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/delete-duplicate-emails/

DELETE p1
FROM person p1, person p2
WHERE p1.email = p2.email AND p1.id > p2.id
;