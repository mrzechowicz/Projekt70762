CREATE VIEW [rapOP].[vTop50CustomersOrderingServices]
AS 
/* 50 Kontrahentów najczęściej korzystających z usług */
SELECT TOP 100 C.Cus_Code, C.Cus_FirstName + ' ' + C.Cus_LastName as CustomerName,
COUNT(SOr_Id) as NoOfOrderedServices
FROM ServiceOrders SO WITH (NOLOCK) join Customer C WITH (NOLOCK) on 
SO.SOr_CusId=C.Cus_Id
GROUP BY C.Cus_Code, Cus_FirstName , Cus_LastName
HAVING count(C.Cus_ID)>1
ORDER BY COUNT(SO.SOr_Id) DESC