SELECT
    activity_date AS day,
    COUNT(DISTINCT(user_id)) AS active_users
FROM
    activity
GROUP BY
    activity_date
HAVING
    COUNT(DISTINCT(user_id)) > 0
    AND
    activity_date BETWEEN '2019-06-28' AND '2019-07-27'