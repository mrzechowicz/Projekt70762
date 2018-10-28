CREATE TABLE [dbo].[CustomerTeam] (
    [CTe_Id]         INT          IDENTITY (1, 1) NOT NULL,
    [CTe_TeamName]   VARCHAR (30) NOT NULL,
    [CTe_InsertDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [CTe_UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_CTeId] PRIMARY KEY CLUSTERED ([CTe_Id] ASC)
);

