-- Додавання працівників
INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
('John Doe', '1990-01-01', 'Trainee', 800),
('Jane Smith', '1985-05-05', 'Junior', 1200),
('Bob Johnson', '1978-02-10', 'Middle', 2400),
('Alice Williams', '1992-10-23', 'Senior', 5000),
('Chris Brown', '1989-07-15', 'Junior', 1300),
('Emma Taylor', '1993-03-30', 'Middle', 3000),
('Daniel Wilson', '1975-09-14', 'Senior', 7000),
('Olivia Jones', '1980-12-01', 'Trainee', 900),
('David Miller', '1995-06-25', 'Junior', 1500),
('Sophia Anderson', '1972-04-11', 'Middle', 3200);

-- Додавання клієнтів
INSERT INTO client (NAME) VALUES
('Global Corp'),
('Tech Innovations'),
('Eco Solutions'),
('Creative Media'),
('Health Plus');

-- Додавання проєктів з випадковим розподілом тривалості та клієнтів
INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE) VALUES
(1, '2023-01-01', '2023-04-01'),
(2, '2023-02-01', '2023-06-01'),
(3, '2023-03-01', '2023-12-01'),
(4, '2023-04-01', '2024-01-01'),
(1, '2023-05-01', '2023-11-01'),
(5, '2023-06-01', '2024-03-01'),
(2, '2023-07-01', '2023-10-01'),
(3, '2023-08-01', '2024-02-01'),
(4, '2023-03-05', '2025-05-06')
