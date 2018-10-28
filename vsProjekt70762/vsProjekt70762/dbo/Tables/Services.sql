CREATE TABLE [dbo].[Services] (
    [Ser_Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Ser_Code]       VARCHAR (15)    NOT NULL,
    [Ser_Name]       VARCHAR (100)   NULL,
    [Ser_NetPrice]   DECIMAL (18, 2) NOT NULL,
    [Ser_VatRate]    DECIMAL (18, 2) NOT NULL,
    [Ser_InsertDate] DATETIME        DEFAULT (getdate()) NOT NULL,
    [Ser_UpdateDate] DATETIME        NULL,
    CONSTRAINT [PK_SerId] PRIMARY KEY CLUSTERED ([Ser_Id] ASC)
);

