CREATE TABLE [dbo].[EmployeeTeam] (
    [ETe_Id]         INT          IDENTITY (1, 1) NOT NULL,
    [ETe_TeamName]   VARCHAR (30) NOT NULL,
    [ETe_InsertDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [ETe_UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_ETeId] PRIMARY KEY CLUSTERED ([ETe_Id] ASC)
);

