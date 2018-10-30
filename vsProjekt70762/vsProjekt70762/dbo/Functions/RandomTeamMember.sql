CREATE FUNCTION [dbo].RandomTeamMember ()
RETURNS INT
AS BEGIN
declare @id int
SELECT @id= Emp_Id from vRandomSalesMan

RETURN @id
END