CREATE VIEW [rapOP].[vBrandOrders] AS
SELECT B.Bra_Name as Brand, COUNT(O.Ord_Id) NumberOfSoldCars, SUM(O.Ord_SellPRice) as TotalSales From Brand B join [model] M on B.Bra_id=M.Mod_BraId
JOIN Orders O on M.Mod_id=Ord_ModId
--GROUP BY B.Bra_Name
GROUP BY ROLLUP (B.Bra_Name)