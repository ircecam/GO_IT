WITH project_durations AS (
    SELECT
        p.ID,
        p.NAME,
        (EXTRACT(YEAR FROM p.FINISH_DATE) - EXTRACT(YEAR FROM p.START_DATE)) * 12 +
        (EXTRACT(MONTH FROM p.FINISH_DATE) - EXTRACT(MONTH FROM p.START_DATE)) AS duration_in_months
    FROM project p
),
     project_prices AS (
         SELECT
             pd.NAME,
             pd.duration_in_months * SUM(w.SALARY) AS price
         FROM project_worker pw
                  JOIN worker w ON pw.WORKER_ID = w.ID
                  JOIN project_durations pd ON pw.PROJECT_ID = pd.ID
         GROUP BY pd.NAME, pd.duration_in_months
     )

SELECT
    NAME,
    price AS PRICE
FROM project_prices
ORDER BY price DESC;