CREATE VIEW [dbo].[vRandomSalesMan]
AS
select TOP 1 Emp_Id from Employee E WITH (NOLOCK)
join EmployeeToTeam ETT WITH (NOLOCK) on E.Emp_Id=ETT.ETT_EmpId
JOIN EmployeeTeam ET WITH (NOLOCK) on ETT.ETT_ETeId=ET.ETe_Id WHERE ET.ETe_TeamName='Sales'
ORDER BY NEWID()