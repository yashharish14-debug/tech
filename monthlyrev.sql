SELECT 
    DATE_FORMAT(o.OrderDate, '%Y-%m') AS Month,
    ROUND(SUM(od.Quantity * od.Price), 2) AS Revenue
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE o.Status = 'Completed'
GROUP BY Month
ORDER BY Month;
