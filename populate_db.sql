-- Додавання працівників
INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY)
VALUES
  ('John Doe', '1990-01-15', 'Trainee', 800),
  ('Jane Smith', '1985-03-20', 'Junior', 1500),
  ('Bob Johnson', '1980-06-10', 'Middle', 3000),
  ('Alice Williams', '1975-08-25', 'Senior', 6000),
  ('David Brown', '1992-02-05', 'Trainee', 900),
  ('Ella Davis', '1987-04-30', 'Junior', 1400),
  ('George Wilson', '1982-07-15', 'Middle', 3200),
  ('Sophia Lee', '1978-09-20', 'Senior', 6100),
  ('Michael Harris', '1995-03-12', 'Trainee', 950),
  ('Olivia Hall', '1989-05-05', 'Junior', 1600);

-- Додавання клієнтів
INSERT INTO client (NAME)
VALUES
  ('Client A'),
  ('Client B'),
  ('Client C'),
  ('Client D'),
  ('Client E');

-- Додавання проєктів
INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE)
VALUES
  (1, '2023-01-01', '2023-04-30'),
  (2, '2023-02-15', '2023-06-30'),
  (3, '2023-03-20', '2023-05-15'),
  (4, '2023-04-10', '2023-07-20'),
  (5, '2023-05-05', '2023-08-31'),
  (1, '2023-06-01', '2023-09-30'),
  (2, '2023-07-15', '2023-10-15'),
  (3, '2023-08-20', '2023-11-10'),
  (4, '2023-09-10', '2023-12-20'),
  (5, '2023-10-05', '2024-01-31');

-- Додавання працівників до проєктів
-- Просто вибираємо випадковіх працівників та присвоюємо їх проєктам
INSERT INTO project_worker (PROJECT_ID, WORKER_ID)
SELECT
  project.ID,
  worker.ID
FROM
  project,
  worker
WHERE
  project.ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10) -- Вибираємо всі проєкти
ORDER BY
  project.ID, RANDOM() -- Випадковим чином призначаємо працівників до проєктів
LIMIT
  ROUND(RANDOM() * 4) + 1 -- Від 1 до 5 працівників на проєкт
ON CONFLICT (PROJECT_ID, WORKER_ID) DO NOTHING; -- Ігноруємо конфлікти
