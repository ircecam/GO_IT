WITH project_count_cte AS (
    SELECT CLIENT_ID, COUNT(*) AS project_count
    FROM project
    GROUP BY CLIENT_ID
)
   , max_project_count_cte AS (
    SELECT MAX(project_count) AS max_project_count
    FROM project_count_cte
)

SELECT client.ID, client.NAME, project_count_cte.project_count
FROM client
         JOIN project_count_cte ON client.ID = project_count_cte.CLIENT_ID
WHERE project_count_cte.project_count = (SELECT max_project_count FROM max_project_count_cte);
