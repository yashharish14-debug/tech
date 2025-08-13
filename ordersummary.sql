select*from customers;
select*from orderdetails;
select*from orders;
select*from products;
SELECT 
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    ROUND(SUM(od.Quantity * od.Price), 2) AS TotalRevenue,
    ROUND(SUM(od.Quantity * od.Price) / COUNT(DISTINCT o.OrderID), 2) AS AvgOrderValue
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE o.Status = 'Completed';
