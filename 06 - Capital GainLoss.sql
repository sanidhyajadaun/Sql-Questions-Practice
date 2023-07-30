# Write your MySQL query statement below
SELECT stock_name, SUM(
    CASE 
        WHEN operation = 'Buy' THEN -price
        ELSE price
    End
) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;