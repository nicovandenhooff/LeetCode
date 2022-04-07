-- 1148. Article Views I
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/article-views-i/

SELECT DISTINCT(author_id) AS id
FROM views
WHERE author_id = viewer_id
ORDER BY author_id
;