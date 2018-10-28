CREATE TABLE [dbo].[CustomerPosition] (
    [CPo_Id]           INT          IDENTITY (1, 1) NOT NULL,
    [CPo_PositionName] VARCHAR (30) NOT NULL,
    [CPo_InsertDate]   DATETIME     DEFAULT (getdate()) NOT NULL,
    [CPo_UpdateDate]   DATETIME     NULL,
    CONSTRAINT [PK_CPoId] PRIMARY KEY CLUSTERED ([CPo_Id] ASC)
);

