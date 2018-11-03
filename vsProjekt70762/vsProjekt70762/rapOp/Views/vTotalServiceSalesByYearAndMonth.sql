CREATE VIEW [rapOP].[vTotalServiceSalesByYearAndMonth]
AS 
/* Total Sales from ServiceOrders By Year and Month */
SELECT YEAR(SO.SOr_OrderDate) as [YEAR], MONTH(SO.SOr_OrderDate) as [MONTH], SUM(Ser_NetPrice) as TotalServicesCost 
FROM [dbo].[Services] AS S WITH (NOLOCK)
JOIN [dbo].[ServiceOrders] AS SO WITH (NOLOCK) on S.Ser_Id=SO.SOr_SerId
GROUP BY YEAR(SO.SOr_OrderDate), MONTH(SO.SOr_OrderDate)