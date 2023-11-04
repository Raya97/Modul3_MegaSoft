-- Знаходження проєкту з найбільшою тривалістю
WITH ProjectDurations AS (
  SELECT
    ID,
    name,
    EXTRACT(YEAR FROM AGE(finish_date, start_date)) * 12 +
    EXTRACT(MONTH FROM AGE(finish_date, start_date)) AS MONTH_COUNT
  FROM
    project
)
SELECT
  name,
  MONTH_COUNT
FROM
  ProjectDurations
WHERE
  MONTH_COUNT = (SELECT MAX(MONTH_COUNT) FROM ProjectDurations);
  
