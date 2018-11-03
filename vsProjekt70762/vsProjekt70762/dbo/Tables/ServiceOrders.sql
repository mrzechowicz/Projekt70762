CREATE TABLE [dbo].[ServiceOrders] (
    [SOr_Id]          INT          IDENTITY (1, 1) NOT NULL,
    [SOr_OrderNumber] VARCHAR (20) NOT NULL,
    [SOr_OrderDate]   DATE         NOT NULL,
    [SOr_SerId]       INT          NOT NULL,
    [SOr_CusId]       INT          NOT NULL,
    [SOr_Finished]    BIT          DEFAULT ((0)) NOT NULL,
    [SOr_InsertDate]  DATETIME     DEFAULT (getdate()) NOT NULL,
    [SOr_UpdateDate]  DATETIME     NULL,
    CONSTRAINT [PK_SOrId] PRIMARY KEY CLUSTERED ([SOr_Id] ASC)
);



