CREATE TABLE [dbo].[CustomerSalary] (
    [CSa_Id]         INT             IDENTITY (1, 1) NOT NULL,
    [CSa_CusId]      INT             NOT NULL,
    [CSa_Salary]     DECIMAL (18, 2) NOT NULL,
    [CSa_DateFrom]   DATE            NOT NULL,
    [CSa_DateTo]     DATE            NULL,
    [CSa_InsertDate] DATETIME        DEFAULT (getdate()) NOT NULL,
    [CSa_UpdateDate] DATETIME        NULL,
    CONSTRAINT [PK_CSaId] PRIMARY KEY CLUSTERED ([CSa_Id] ASC)
);

