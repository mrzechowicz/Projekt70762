CREATE VIEW [rapOP].[vEmployeeOrdersList] AS
SELECT E.Emp_Login, COUNT(O.Ord_Id) as NumberOfOrders, SUM(O.Ord_SellPrice) as TotalSale  
FROM [Employee] E WITH (NOLOCK) JOIN [Orders] O WITH (NOLOCK) on E.Emp_Id=O.Ord_EmpId
GROUP BY E.Emp_Login