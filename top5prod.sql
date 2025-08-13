SELECT
    p.Category,
    p.ProductName,
    ROUND(SUM(od.Quantity * od.Price), 2) AS TotalSales
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.Status = 'Completed'
GROUP BY p.Category, p.ProductName
ORDER BY TotalSales DESC
LIMIT 5;