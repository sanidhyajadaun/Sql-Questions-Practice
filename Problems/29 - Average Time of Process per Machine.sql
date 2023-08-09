# Write your MySQL query statement below
SELECT A1.machine_id,
ROUND(AVG(A2.timestamp-A1.timestamp),3) as processing_time
FROM Activity A1
JOIN Activity A2
ON A1.process_id = A2.process_id
AND A1.machine_id = A2.machine_id
AND A1.timestamp < A2.timestamp
GROUP BY A1.machine_id;