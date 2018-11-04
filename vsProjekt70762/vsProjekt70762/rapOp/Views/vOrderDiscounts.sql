CREATE VIEW [rapOP].[vOrderDiscounts] AS
SELECT O.Ord_Code, C.Cus_Code, Cus_FirstName + ' ' + Cus_LastName as CustomerName,
O.Ord_OrderDate, O.Ord_SellPrice,  MP.Mpr_NetValue as CatalogPrice,
cast((1-O.Ord_SellPrice/MP.Mpr_NetValue)*100 as decimal(18,2)) as Discount
From Orders O WITH (NOLOCK)
JOIN [ModelPrice] MP WITH (NOLOCK) on O.Ord_ModId=MP.MPr_ModId and O.Ord_OrderDate>=MP.Mpr_DateStart and O.Ord_OrderDate<MP.Mpr_DateEnd
JOIN [Customer] C WITH (NOLOCK) on C.Cus_Id=O.Ord_CusId
WHERE (1-O.Ord_SellPrice/MP.Mpr_NetValue)*100<>0