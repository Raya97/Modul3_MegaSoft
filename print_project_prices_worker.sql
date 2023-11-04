-- Знайдемо вартість кожного проєкту
SELECT
  p.id,
  p.name AS project_name,
  SUM(w.salary * (EXTRACT(YEAR FROM AGE(p.finish_date, p.start_date)) * 12 +
                  EXTRACT(MONTH FROM AGE(p.finish_date, p.start_date)))) AS project_price
FROM
  project p
INNER JOIN
  project_worker pw ON p.id = pw.project_id
INNER JOIN
  worker w ON pw.worker_id = w.id
GROUP BY
  p.id,
  p.name
ORDER BY
  project_price DESC;
