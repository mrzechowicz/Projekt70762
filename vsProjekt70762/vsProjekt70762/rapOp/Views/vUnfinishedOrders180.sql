CREATE VIEW [rapOP].[vUnfinishedOrders180]
/* Unfinished orders older than 180 days */
AS 
SELECT Sor_OrderNumber, Sor_OrderDate, Ser_Name, Cus_Code, C.Cus_FirstName + ' ' + C.Cus_LastName as CustomerName
FROM ServiceOrders SO WITH (NOLOCK) 
JOIN [Services] S WITH (NOLOCK) on SO.SOr_SerId=S.Ser_Id
JOIN [Customer] C WITH (NOLOCK) on C.Cus_Id = SO.SOr_CusId
WHERE DATEDIFF(day, SOr_OrderDate, GETDATE() )>=180 AND SOr_Finished=0