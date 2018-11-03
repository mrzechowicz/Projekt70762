CREATE VIEW [dbo].[vRandomCustomer]
AS
select TOP 1 Cus_Id from Customer
ORDER BY NEWID()