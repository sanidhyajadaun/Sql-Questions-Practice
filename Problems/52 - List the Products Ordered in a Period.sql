# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) as unit
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id
HAVING unit >= 100
ORDER BY o.product_id;