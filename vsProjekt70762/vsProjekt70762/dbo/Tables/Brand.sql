CREATE TABLE [dbo].[Brand] (
    [Bra_Id]         SMALLINT     IDENTITY (1, 1) NOT NULL,
    [Bra_Code]       VARCHAR (10) NOT NULL,
    [Bra_Name]       VARCHAR (50) NOT NULL,
    [Bra_Origin]     VARCHAR (50) NULL,
    [Bra_InsertDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [Bra_UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_BraCode] PRIMARY KEY CLUSTERED ([Bra_Code] ASC)
);

