-- Problem 178. Rank Scores
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/rank-scores/

SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores