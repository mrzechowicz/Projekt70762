CREATE VIEW [rapOP].[vHRYearlySalesManRatio]
AS 
/* Emp Yearly Sales Compared to Yearly Payout */
SELECT YEAR(EP.EPa_DateFrom) as [YEAR], Emp_Login, SUM(EP.Epa_PayoutAmount) as PayoutAmount,
O.TotalSale,
O.TotalSale/SUM(EP.Epa_PayoutAmount)/100 as Ratio
FROM Employee E WITH (NOLOCK) 
JOIN EmployeePayout EP WITH (NOLOCK) ON EP.EPa_EmpId=EP.EPa_EmpId
JOIN (Select YEAR(Ord_OrderDate) as [YEAR], SUM(Ord_SellPrice) as TotalSale, Ord_EmpId 
		FROM Orders O WITH (NOLOCK)
		GROUP BY Ord_EmpId, YEAR(Ord_OrderDate)) as O
		 on O.Ord_EmpId=E.Emp_Id
GROUP BY Emp_login, YEAR(EP.EPa_DateFrom), O.TotalSale