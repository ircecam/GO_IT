WITH age_extremes_cte AS (
    SELECT
        MIN(BIRTHDAY) AS eldest_birthday,
        MAX(BIRTHDAY) AS youngest_birthday
    FROM worker
)

SELECT
    'YOUNGEST' AS TYPE,
    NAME,
    BIRTHDAY
FROM worker
WHERE BIRTHDAY = (SELECT youngest_birthday FROM age_extremes_cte)

UNION ALL

SELECT
    'OLDEST' AS TYPE,
    NAME,
    BIRTHDAY
FROM worker
WHERE BIRTHDAY = (SELECT eldest_birthday FROM age_extremes_cte);