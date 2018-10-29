CREATE TABLE [dbo].[EmployeePayout] (
    [EPa_Id]           INT             IDENTITY (1, 1) NOT NULL,
    [EPa_EmpId]        INT             NOT NULL,
    [EPa_PayoutAmount] DECIMAL (18, 2) NOT NULL,
    [EPa_PayoutType]   VARCHAR (10)    NOT NULL,
    [EPa_DateFrom]     DATE            NOT NULL,
    [EPa_DateTo]       DATE            NOT NULL,
    [EPa_InsertDate]   DATETIME        DEFAULT (getdate()) NOT NULL,
    [EPa_UpdateDate]   DATETIME        NULL,
    CONSTRAINT [PK_EpaId] PRIMARY KEY CLUSTERED ([EPa_Id] ASC)
);

