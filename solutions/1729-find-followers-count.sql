-- 1729. Find Followers Count
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/find-followers-count/submissions/

SELECT
    user_id,
    COUNT(follower_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id
;