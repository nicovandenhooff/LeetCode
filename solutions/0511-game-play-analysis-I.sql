-- 511. Game Play Analysis I
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/game-play-analysis-i/

SELECT player_id, MIN(event_date) AS first_login
FROM activity
GROUP BY player_id
;