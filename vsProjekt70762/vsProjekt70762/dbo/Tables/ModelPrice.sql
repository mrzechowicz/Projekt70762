CREATE TABLE [dbo].[ModelPrice] (
    [MPr_Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Mpr_ModId]      INT             NOT NULL,
    [MPr_NetValue]   DECIMAL (18, 2) NULL,
    [Mpr_VatRate]    DECIMAL (18, 2) NULL,
    [Mpr_DateStart]  DATE            NOT NULL,
    [Mpr_DateEnd]    DATE            NULL,
    [Mpr_InsertDate] DATETIME        DEFAULT (getdate()) NOT NULL,
    [Mpr_UpdateDate] DATETIME        NULL,
    CONSTRAINT [PK_MprId] PRIMARY KEY CLUSTERED ([MPr_Id] ASC)
);





