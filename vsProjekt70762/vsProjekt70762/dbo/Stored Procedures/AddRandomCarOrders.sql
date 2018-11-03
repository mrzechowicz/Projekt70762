CREATE PROCEDURE [dbo].[AddRandomCarOrders] @MaxOrders int
AS
BEGIN
--declare @MaxOrders int = 1500
declare @lastNumber int;


SELECT TOP 1 @lastNumber = SUBSTRING(Ord_Code, PATINDEX('%/%', Ord_Code)+1, PATINDEX('%/%', Ord_Code)) from Orders order by Ord_Id desc
IF @lastNumber is null
 BEGIN
 SET @lastNumber=0
 END 

;with CTE (Cus_Id, Emp_Id, Model_Id, Date_Start, Rownumber)
as 
(select  1, 1, 1, DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01'), 1 union all
SELECT    
--ABS(CHECKSUM(NewId())) % @MaxOrders - 0, 
[dbo].RandomCustomer(),
[dbo].RandomTeamMember(),
ABS(CHECKSUM(NewId())) % 98-0,
DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01'),
Rownumber+1 from CTE where Rownumber<=@MaxOrders
) 

INSERT INTO Orders
(Ord_Code, Ord_CusId, Ord_EmpId, Ord_ModId,
Ord_MprId, Ord_SellPrice, Ord_OrderDate, Ord_PlannedPickupDate,
Ord_IsCompleted, Ord_IsPaid)

select distinct TOP (@MaxOrders) 
--cast(YEAR(GETDATE()) as varchar(4))+'/'+cast(@lastNumber as varchar(10))+cast(Rownumber as varchar(10)),
ISNULL((SELECT MAX(Ord_Id) from Orders),0)+ROW_NUMBER() OVER (ORDER BY (SELECT NULL)),
Cus_Id  as Cus_ID ,  
Emp_id,
M.Mod_Id AS Ord_ModId,
1 as Mpr_Id,
MP.MPr_NetValue AS Ord_SellPrice, 
CTE.Date_Start as MPr_DateStart, 
NULL AS Ord_PlannedPickupDate,
(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsCompleted, 
(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsPaid 
 from CTE
 JOIN Model M on CTE.Model_Id=M.Mod_Id
 Join ModelPrice MP on M.Mod_Id=MP.Mpr_ModId
 --JOIN (SELECT MAX(Mpr_Id) FROM ModelPrice GROUP BY Mpr_ModId WHERE ) MP2 on Mp 
 OPTION (MAXRECURSION 0) 

 UPDATE Orders SET Ord_PlannedPickupDate=DATEADD(day, 14,Ord_OrderDate) WHERE Ord_PlannedPickupDate is null
END