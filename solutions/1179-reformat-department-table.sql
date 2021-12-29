-- 1179. Reformat Department Table
-- Author: Nico Van den Hooff
-- SQL Engine: Oracle
-- https://leetcode.com/problems/reformat-department-table/

SELECT *
FROM department
PIVOT (
    SUM(revenue) Revenue
    FOR month IN (
        'Jan' Jan,
        'Feb' Feb,
        'Mar' Mar,
        'Apr' Apr,
        'May' May,
        'Jun' Jun,
        'Jul' Jul,
        'Aug' Aug,
        'Sep' Sep,
        'Oct' Oct,
        'Nov' Nov,
        'Dec' Dec
    )
)
;