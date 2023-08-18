# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT person_name, weight, turn, SUM(weight) OVER(ORDER BY turn) as t_sum
    FROM queue
    ) x
WHERE t_sum <=1000
ORDER BY turn DESC LIMIT 1;