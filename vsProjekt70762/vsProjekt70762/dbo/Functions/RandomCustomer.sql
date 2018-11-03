
CREATE FUNCTION [dbo].RandomCustomer()
RETURNS INT
AS BEGIN
declare @id int
SELECT @id= Cus_id from [vRandomCustomer]
RETURN @id
END