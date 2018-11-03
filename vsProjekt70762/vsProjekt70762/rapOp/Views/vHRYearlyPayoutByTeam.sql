CREATE VIEW [rapOP].[vHRYearlyPayoutByTeam]
AS 
/* Total Payout yearly by each Team */
SELECT 
YEAR(EP.Epa_DateFrom) as [YEAR], SUM(EP.Epa_PayoutAmount) as [PayoutAmount],
ET.ETe_TeamName
FROM EmployeePayout EP WITH (NOLOCK)
JOIN EmployeeToTeam ETT WITH (NOLOCK) ON ETT.ETT_EmpId=EP.EPa_EmpId
JOIN EmployeeTeam ET WITH (NOLOCK) ON ETT.ETT_ETeId=ET.ETe_Id
GROUP BY YEAR(EP.Epa_DateFrom), ET.ETe_TeamName