CREATE VIEW [rapOP].[vHRStaffGoingRetire]
AS 
/* Staff persons who is going or should be retired */
SELECT Emp_Login, Emp_FirstName + ' ' + Emp_LastName as Emp_Name,
cast((YEAR(GETDATE()) )as int) - cast(LEFT(Emp_Pesel,2)+1900 as int) as Age,
CASE 
WHEN cast((YEAR(GETDATE()) )as int) - cast(LEFT(Emp_Pesel,2)+1900 as int)>65 THEN 'Should be retired already!'
WHEN cast((YEAR(GETDATE()) )as int) - cast(LEFT(Emp_Pesel,2)+1900 as int)>60 THEN 'Going for retire in 5 years or less'
WHEN cast((YEAR(GETDATE()) )as int) - cast(LEFT(Emp_Pesel,2)+1900 as int)<=60 THEN 'Mid-age' END as RetirementStatus
FROM Employee  WITH (NOLOCK)