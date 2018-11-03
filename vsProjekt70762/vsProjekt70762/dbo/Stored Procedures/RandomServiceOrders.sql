CREATE PROCEDURE [dbo].[RandomServiceOrders] @Count int
AS 
BEGIN
DECLARE @i int = 1

WHILE @Count>=@i
	BEGIN
		INSERT INTO [dbo].[ServiceOrders]
		( [SOr_OrderNumber]
		  ,[SOr_OrderDate]
		  ,[SOr_SerId]
		  ,[SOr_CusId]
		  ,[SOr_Finished])
		  SELECT ISNULL((SELECT MAX(SOr_Id) from ServiceOrders),0)+ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) Sor_OrderNumber,
		  DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01') Sor_OrderDate,
		  (SELECT TOP 1 Ser_ID from Services ORDER BY NEWID()) Sor_SerId,
		  [dbo].RandomCustomer(),
		  (SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS SOr_Finished

	SET @i = @i+1
	END
END