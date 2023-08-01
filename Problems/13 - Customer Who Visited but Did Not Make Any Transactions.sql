# Write your MySQL query statement below
SELECT V.customer_id, COUNT(v.visit_id) as count_no_trans
FROM Visits as V
LEFT JOIN Transactions AS T
ON V.visit_id = T.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;