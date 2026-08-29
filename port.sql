CREATE TABLE step_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    day_number INTEGER NOT NULL,
    step_count INTEGER NOT NULL
);

INSERT INTO step_records (day_number, step_count)
VALUES
(1, 1000),
(2, 2000),
(3, 1500),
(4, 3000),
(5, 2500);

SELECT 
    day_number,
    step_count
FROM step_records;

SELECT MAX(total_steps) AS maximum_total_steps
FROM (
    SELECT
        day_number,
        SUM(step_count) OVER (
            ORDER BY day_number
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS total_steps
    FROM step_records
) AS window_steps;

SELECT 
    day_number,
    step_count,
    SUM(step_count) OVER (
        ORDER BY day_number
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS window_total
FROM step_records;
