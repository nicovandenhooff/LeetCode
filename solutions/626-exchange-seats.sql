-- 626. Exchange Seats
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/exchange-seats/

WITH swaps AS (
    SELECT
        s1.id,
        s1.student,
        s2.student AS odd_swap,
        s3.student AS even_swap
    FROM Seat s1
    LEFT OUTER JOIN Seat s2
    ON s1.id = s2.id - 1
    LEFT OUTER JOIN Seat s3
    ON s1.id = s3.id + 1
)
SELECT 
    id,
    CASE
        -- edge case: odd number of students
        WHEN MOD(id, 2) != 0 AND odd_swap IS NULL THEN student
        -- swaps odd id students with even id students
        WHEN MOD(id, 2) != 0 THEN odd_swap
        -- swaps even id students with odd id students
        WHEN MOD(id, 2) = 0 THEN even_swap
    END AS student
FROM swaps
;