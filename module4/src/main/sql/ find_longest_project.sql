WITH project_duration_cte AS (
    SELECT
        ID,
        (DATE_PART('year', FINISH_DATE) - DATE_PART('year', START_DATE)) * 12 +
        (DATE_PART('month', FINISH_DATE) - DATE_PART('month', START_DATE)) AS month_count
    FROM project
)
   , max_duration_cte AS (
    SELECT MAX(month_count) AS max_month_count
    FROM project_duration_cte
)
SELECT p.NAME, pd.month_count
FROM project_duration_cte pd
         JOIN project p ON pd.ID = p.ID
WHERE pd.month_count = (SELECT max_month_count FROM max_duration_cte);
