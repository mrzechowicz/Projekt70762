CREATE VIEW [dbo].[vRandomCustomer]
AS
select TOP 1 Cus_Id from Customer WITH (NOLOCK)
ORDER BY NEWID()