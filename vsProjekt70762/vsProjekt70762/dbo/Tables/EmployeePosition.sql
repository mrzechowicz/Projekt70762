CREATE TABLE [dbo].[EmployeePosition] (
    [EPo_Id]           INT          IDENTITY (1, 1) NOT NULL,
    [EPo_PositionName] VARCHAR (30) NOT NULL,
    [EPo_InsertDate]   DATETIME     DEFAULT (getdate()) NOT NULL,
    [EPo_UpdateDate]   DATETIME     NULL,
    CONSTRAINT [PK_EPoId] PRIMARY KEY CLUSTERED ([EPo_Id] ASC)
);

