WITH max_salary AS (
    SELECT MAX(SALARY) AS m_salary
    FROM worker
)
SELECT NAME, SALARY
FROM worker
WHERE SALARY = (SELECT m_salary FROM max_salary);