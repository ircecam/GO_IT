INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
    ('John Doe', '1990-01-15', 'Senior', 6000),
    ('Jane Smith', '1985-04-10', 'Middle', 4000),
    ('Alex Johnson', '1992-08-05', 'Junior', 1500),
    ('Emily Davis', '1997-02-25', 'Trainee', 800),
    ('Michael Brown', '1980-09-15', 'Senior', 7000),
    ('Jessica Wilson', '1989-11-30', 'Middle', 4500),
    ('Chris Lee', '1994-03-21', 'Junior', 1200),
    ('Sarah Walker', '1995-05-17', 'Trainee', 950),
    ('David Hall', '1978-12-22', 'Senior', 8500),
    ('Daniel Harris', '1988-06-11', 'Middle', 3500);


INSERT INTO client (NAME) VALUES
    ('Acme Corp'),
    ('GlobalTech'),
    ('Innovate Ltd'),
    ('TechWorks'),
    ('Alpha Systems');

INSERT INTO project (NAME, CLIENT_ID, START_DATE, FINISH_DATE) VALUES
    ('Project A', 1, '2023-01-01', '2024-01-01'),
    ('Project B', 2, '2022-05-15', '2023-12-15'),
    ('Project C', 3, '2021-07-01', '2023-07-01'),
    ('Project D', 4, '2023-03-01', '2023-09-01'),
    ('Project E', 5, '2020-11-20', '2024-11-20'),
    ('Project F', 1, '2023-08-01', '2025-08-01'),
    ('Project G', 3, '2022-02-10', '2024-06-10'),
    ('Project H', 4, '2021-09-15', '2022-11-15'),
    ('Project I', 5, '2023-06-05', '2023-12-05'),
    ('Project J', 2, '2024-02-20', '2024-05-20');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
    (1, 1), (1, 3), (1, 4),
    (2, 2), (2, 5),
    (3, 6), (3, 7), (3, 8),
    (4, 9), (4, 10),
    (5, 1), (5, 3), (5, 5),
    (6, 4), (6, 6),
    (7, 2), (7, 8), (7, 10),
    (8, 9),
    (9, 5), (9, 7),
    (10, 1), (10, 6);