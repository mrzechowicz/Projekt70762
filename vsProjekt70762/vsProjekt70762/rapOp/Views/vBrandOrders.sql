CREATE VIEW [rapOP].[vBrandOrders] AS
SELECT B.Bra_Name as Brand, COUNT(O.Ord_Id) NumberOfSoldCars, SUM(O.Ord_SellPRice) as TotalSales 
From Brand B WITH (NOLOCK) join [model] M WITH (NOLOCK) on B.Bra_id=M.Mod_BraId
JOIN Orders O WITH (NOLOCK) on M.Mod_id=Ord_ModId
--GROUP BY B.Bra_Name
GROUP BY ROLLUP (B.Bra_Name)