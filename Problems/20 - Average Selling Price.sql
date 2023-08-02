# Write your MySQL query statement below
SELECT P.product_id, ROUND(SUM(P.price*U.units)/SUM(U.units),2) as average_price
FROM Prices P
INNER JOIN UnitsSold U
ON P.product_id = U.product_id 
AND U.purchase_date BETWEEN P.Start_date AND P.end_date
GROUP BY P.product_id;