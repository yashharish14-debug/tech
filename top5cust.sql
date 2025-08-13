SELECT
    c.CustomerID,
    c.CustomerName,
    
    ROUND(SUM(od.Quantity * od.Price), 2) AS TotalSpent
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.Status = 'Completed'
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;