CREATE TABLE [dbo].[CustomerPayout] (
    [CPa_Id]           INT             IDENTITY (1, 1) NOT NULL,
    [CPa_CusId]        INT             NOT NULL,
    [CPa_PayoutAmount] DECIMAL (18, 2) NOT NULL,
    [CPa_PayoutType]   VARCHAR (10)    NOT NULL,
    [CPa_DateFrom]     DATE            NOT NULL,
    [CPa_DateTo]       DATE            NOT NULL,
    [CPa_InsertDate]   DATETIME        DEFAULT (getdate()) NOT NULL,
    [CPa_UpdateDate]   DATETIME        NULL,
    CONSTRAINT [PK_CpaId] PRIMARY KEY CLUSTERED ([CPa_Id] ASC)
);

