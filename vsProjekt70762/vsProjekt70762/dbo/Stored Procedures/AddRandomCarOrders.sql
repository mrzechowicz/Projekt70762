CREATE PROCEDURE [dbo].[AddRandomCarOrders] @MaxOrders int
AS
BEGIN
declare @lastNumber int;
--declare @MaxOrders int = 1500

SELECT TOP 1 @lastNumber = SUBSTRING(Ord_Code, PATINDEX('%/%', Ord_Code)+1, PATINDEX('%/%', Ord_Code)) from Orders order by Ord_Id desc
IF @lastNumber is null
 BEGIN
 SET @lastNumber=0
 END 

;with CTE (Cus_Id, Emp_Id, Model_Id, Rownumber)
as 
(select  1, 4, 1, 1 union all
SELECT    
ABS(CHECKSUM(NewId())) % @MaxOrders - 0, 
[dbo].RandomTeamMember(),
ABS(CHECKSUM(NewId())) % 98-0,
Rownumber+1 from CTE where Rownumber<=@MaxOrders
) 

INSERT INTO Orders
(Ord_Code, Ord_CusId, Ord_EmpId, Ord_ModId,
Ord_MprId, Ord_SellPrice, Ord_OrderDate, Ord_PlannedPickupDate,
Ord_IsCompleted, Ord_IsPaid)

select TOP (@MaxOrders) 
cast(YEAR(GETDATE()) as varchar(4))+'/'+cast(@lastNumber as varchar(10))+cast(Rownumber as varchar(10)),
Cus_Id  as Cus_ID ,  
Emp_id,
M.Mod_Id AS Ord_ModId,
1 as Mpr_Id,
MP.MPr_NetValue AS Ord_SellPrice, 
DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01') as MPr_DateStart, 
NULL AS Ord_PlannedPickupDate,
(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsCompleted, 
(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsPaid 
 from CTE
 JOIN Model M on CTE.Model_Id=M.Mod_Id
 Join ModelPrice MP on M.Mod_Id=MP.Mpr_ModId
 OPTION (MAXRECURSION 0) 
END