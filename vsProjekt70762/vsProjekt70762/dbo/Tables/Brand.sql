CREATE TABLE [dbo].[Brand] (
    [Bra_Id]         SMALLINT     IDENTITY (1, 1) NOT NULL,
    [Bra_Code]       VARCHAR (10) NOT NULL,
    [Bra_Name]       VARCHAR (50) NOT NULL,
    [Bra_Origin]     VARCHAR (50) NULL,
    [Bra_InsertDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [Bra_UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_BraId] PRIMARY KEY CLUSTERED ([Bra_Id] ASC),
    CONSTRAINT [UQ_BraCode] UNIQUE NONCLUSTERED ([Bra_Code] ASC)
);



