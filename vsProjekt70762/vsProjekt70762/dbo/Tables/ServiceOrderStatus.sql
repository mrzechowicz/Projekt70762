CREATE TABLE [dbo].[ServiceOrderStatus] (
    [SOS_Id]         INT          IDENTITY (1, 1) NOT NULL,
    [SOS_Code]       VARCHAR (20) NOT NULL,
    [SOS_StatusName] VARCHAR (20) NOT NULL,
    [SOS_InsertDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [SOS_UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_SOSId] PRIMARY KEY CLUSTERED ([SOS_Id] ASC)
);

