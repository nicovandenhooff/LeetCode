-- 1050. Actors and Directors Who Cooperated At Least Three Times
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

SELECT actor_id, director_id
FROM actordirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3
;