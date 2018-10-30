CREATE VIEW [dbo].[vRandomSalesMan]
AS
select TOP 1 Emp_Id from Employee E 
join EmployeeToTeam ETT on E.Emp_Id=ETT.ETT_EmpId
JOIN EmployeeTeam ET on ETT.ETT_ETeId=ET.ETe_Id WHERE ET.ETe_TeamName='Sales'
ORDER BY NEWID()